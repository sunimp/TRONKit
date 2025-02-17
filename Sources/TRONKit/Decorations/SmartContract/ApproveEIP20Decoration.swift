//
//  ApproveEIP20Decoration.swift
//  TRONKit
//
//  Created by Sun on 2024/8/15.
//

import Foundation

import BigInt

public class ApproveEIP20Decoration: TransactionDecoration {
    // MARK: Properties

    public let contractAddress: Address
    public let spender: Address
    public let value: BigUInt

    // MARK: Lifecycle

    init(contractAddress: Address, spender: Address, value: BigUInt) {
        self.contractAddress = contractAddress
        self.spender = spender
        self.value = value

        super.init()
    }

    // MARK: Overridden Functions

    override public func tags(userAddress _: Address) -> [TransactionTag] {
        [
            TransactionTag(type: .approve, protocol: .eip20, contractAddress: contractAddress),
        ]
    }
}
