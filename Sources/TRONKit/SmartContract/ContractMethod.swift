//
//  ContractMethod.swift
//  TRONKit
//
//  Created by Sun on 2023/5/17.
//

import Foundation

open class ContractMethod {
    // MARK: Computed Properties

    open var methodSignature: String {
        fatalError("Subclasses must override.")
    }

    open var arguments: [Any] {
        fatalError("Subclasses must override.")
    }

    public var methodID: Data {
        ContractMethodHelper.methodID(signature: methodSignature)
    }

    // MARK: Lifecycle

    public init() { }

    // MARK: Functions

    public func encodedABI() -> Data {
        ContractMethodHelper.encodedABI(methodID: methodID, arguments: arguments)
    }
}
