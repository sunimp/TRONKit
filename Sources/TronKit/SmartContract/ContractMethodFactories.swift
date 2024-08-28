//
//  ContractMethodFactories.swift
//  TronKit
//
//  Created by Sun on 2024/8/21.
//

import Foundation

// MARK: - IContractMethodFactory

public protocol IContractMethodFactory {
    var methodId: Data { get }
    func createMethod(inputArguments: Data) throws -> ContractMethod
}

// MARK: - IContractMethodsFactory

public protocol IContractMethodsFactory: IContractMethodFactory {
    var methodIds: [Data] { get }
}

extension IContractMethodsFactory {
    var methodId: Data { Data() }
}

// MARK: - ContractMethodFactories

open class ContractMethodFactories {
    public enum DecodeError: Error {
        case invalidABI
    }

    public init() { }

    private var factories = [Data: IContractMethodFactory]()

    public func register(factories: [IContractMethodFactory]) {
        for factory in factories {
            if let methodsFactory = factory as? IContractMethodsFactory {
                for methodId in methodsFactory.methodIds {
                    self.factories[methodId] = factory
                }
            } else {
                self.factories[factory.methodId] = factory
            }
        }
    }

    public func createMethod(input: Data) -> ContractMethod? {
        let methodId = Data(input.prefix(4))
        let factory = factories[methodId]

        return try? factory?.createMethod(inputArguments: Data(input.suffix(from: 4)))
    }
}
