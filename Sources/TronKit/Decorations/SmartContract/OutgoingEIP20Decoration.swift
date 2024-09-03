//
//  OutgoingEIP20Decoration.swift
//
//  Created by Sun on 2023/5/17.
//

import Foundation

import BigInt

public class OutgoingEIP20Decoration: TransactionDecoration {
    // MARK: Properties

    public let contractAddress: Address
    public let to: Address
    public let value: BigUInt
    public let sentToSelf: Bool
    public let tokenInfo: TokenInfo?

    // MARK: Lifecycle

    init(contractAddress: Address, to: Address, value: BigUInt, sentToSelf: Bool, tokenInfo: TokenInfo?) {
        self.contractAddress = contractAddress
        self.to = to
        self.value = value
        self.sentToSelf = sentToSelf
        self.tokenInfo = tokenInfo

        super.init()
    }

    // MARK: Overridden Functions

    override public func tags(userAddress _: Address) -> [TransactionTag] {
        [
            TransactionTag(type: .outgoing, protocol: .eip20, contractAddress: contractAddress, addresses: [to.hex]),
        ]
    }
}
