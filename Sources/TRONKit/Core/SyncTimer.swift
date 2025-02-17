//
//  SyncTimer.swift
//  TRONKit
//
//  Created by Sun on 2023/5/2.
//

import Combine
import Foundation

import BigInt
import SWExtensions
import SWToolKit

// MARK: - ISyncTimerDelegate

protocol ISyncTimerDelegate: AnyObject {
    func didUpdate(state: SyncTimer.State)
    func sync()
}

// MARK: - SyncTimer

class SyncTimer {
    // MARK: Properties

    weak var delegate: ISyncTimerDelegate?

    private let reachabilityManager: ReachabilityManager
    private let syncInterval: TimeInterval
    private var cancellables = Set<AnyCancellable>()
    private var tasks = Set<AnyTask>()

    private var isStarted = false
    private var timer: Timer?

    // MARK: Computed Properties

    private(set) var state: State = .notReady(error: Kit.SyncError.notStarted) {
        didSet {
            if state != oldValue {
                delegate?.didUpdate(state: state)
            }
        }
    }

    // MARK: Lifecycle

    init(reachabilityManager: ReachabilityManager, syncInterval: TimeInterval) {
        self.reachabilityManager = reachabilityManager
        self.syncInterval = syncInterval

        reachabilityManager.$isReachable
            .sink { [weak self] reachable in
                self?.handleUpdate(reachable: reachable)
            }
            .store(in: &cancellables)
    }

    deinit {
        stop()
    }

    // MARK: Functions

    @objc
    func onFireTimer() {
        Task { [weak self] in
            self?.delegate?.sync()
        }.store(in: &tasks)
    }

    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: syncInterval, repeats: true) { [weak self] _ in
            self?.onFireTimer()
        }
        timer?.tolerance = 0.5
    }

    private func handleUpdate(reachable: Bool) {
        guard isStarted else {
            return
        }

        if reachable {
            state = .ready

            DispatchQueue.main.async { [weak self] in
                self?.startTimer()
            }
        } else {
            state = .notReady(error: Kit.SyncError.noNetworkConnection)
            timer?.invalidate()
        }
    }
}

extension SyncTimer {
    func start() {
        isStarted = true

        handleUpdate(reachable: reachabilityManager.isReachable)
    }

    func stop() {
        isStarted = false

        cancellables = Set()
        tasks = Set()

        state = .notReady(error: Kit.SyncError.notStarted)
        timer?.invalidate()
    }
}

// MARK: SyncTimer.State

extension SyncTimer {
    enum State: Equatable {
        case ready
        case notReady(error: Error)

        // MARK: Static Functions

        public static func == (lhs: State, rhs: State) -> Bool {
            switch (lhs, rhs) {
            case (.ready, .ready): true
            case let (.notReady(lhsError), .notReady(rhsError)): "\(lhsError)" == "\(rhsError)"
            default: false
            }
        }
    }
}
