//
//  TRC20TransactionDecorator.swift
//  TRONKit
//
//  Created by Sun on 2024/8/28.
//

import Foundation

import BigInt

// MARK: - TRC20TransactionDecorator

class TRC20TransactionDecorator {
    // MARK: Properties

    private let address: Address
    private let factories = ContractMethodFactories()

    // MARK: Lifecycle

    init(address: Address) {
        self.address = address
        factories.register(factories: [TransferMethodFactory(), ApproveMethodFactory()])
    }
}

// MARK: ITransactionDecorator

extension TRC20TransactionDecorator: ITransactionDecorator {
    func decoration(
        contract: TriggerSmartContract,
        internalTransactions _: [InternalTransaction],
        events: [Event]
    )
        -> TransactionDecoration? {
        guard let contractMethod = factories.createMethod(input: contract.data.sw.hexData!) else {
            return nil
        }

        if let transferMethod = contractMethod as? TransferMethod {
            if contract.ownerAddress == address {
                return OutgoingEIP20Decoration(
                    contractAddress: contract.contractAddress,
                    to: transferMethod.to,
                    value: transferMethod.value,
                    sentToSelf: transferMethod.to == address,
                    tokenInfo: events.compactMap { $0 as? TRC20TransferEvent }
                        .first { $0.contractAddress == contract.contractAddress }?.tokenInfo
                )
            }
        }

        if let approveMethod = contractMethod as? ApproveMethod {
            return ApproveEIP20Decoration(
                contractAddress: contract.contractAddress,
                spender: approveMethod.spender,
                value: approveMethod.value
            )
        }

        return nil
    }
}
