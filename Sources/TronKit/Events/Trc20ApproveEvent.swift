//
//  Trc20ApproveEvent.swift
//
//  Created by Sun on 2023/5/17.
//

import Foundation

import BigInt

public class Trc20ApproveEvent: Event {
    // MARK: Properties

    public let owner: Address
    public let spender: Address
    public let value: BigUInt

    public let tokenInfo: TokenInfo?

    // MARK: Lifecycle

    init(record: Trc20EventRecord) {
        owner = record.from
        spender = record.to
        value = record.value
        tokenInfo = TokenInfo(
            tokenName: record.tokenName,
            tokenSymbol: record.tokenSymbol,
            tokenDecimal: record.tokenDecimal
        )

        super.init(transactionHash: record.transactionHash, contractAddress: record.contractAddress)
    }

    // MARK: Overridden Functions

    override public func tags(userAddress _: Address) -> [TransactionTag] {
        [TransactionTag(type: .approve, protocol: .eip20, contractAddress: contractAddress)]
    }
}
