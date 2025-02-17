//
//  TransactionSender.swift
//  TRONKit
//
//  Created by Sun on 2023/5/26.
//

import Foundation

// MARK: - TransactionSender

class TransactionSender {
    // MARK: Properties

    private let tronGridProvider: TRONGridProvider

    // MARK: Lifecycle

    init(tronGridProvider: TRONGridProvider) {
        self.tronGridProvider = tronGridProvider
    }
}

extension TransactionSender {
    func sendTransaction(
        contract: Contract,
        signer: Signer,
        feeLimit: Int?
    ) async throws
        -> CreatedTransactionResponse {
        var createdTransaction: CreatedTransactionResponse

        guard let contract = contract as? SupportedContract else {
            throw Kit.SendError.notSupportedContract
        }

        switch contract {
        case let transfer as TransferContract:
            createdTransaction = try await tronGridProvider.createTransaction(
                ownerAddress: transfer.ownerAddress.hex,
                toAddress: transfer.toAddress.hex,
                amount: transfer.amount
            )

        case let smartContract as TriggerSmartContract:
            guard
                let functionSelector = smartContract.functionSelector,
                let parameter = smartContract.parameter,
                let feeLimit
            else {
                throw Kit.SendError.invalidParameter
            }

            createdTransaction = try await tronGridProvider.triggerSmartContract(
                ownerAddress: smartContract.ownerAddress.hex,
                contractAddress: smartContract.contractAddress.hex,
                functionSelector: functionSelector,
                parameter: parameter,
                feeLimit: feeLimit
            )

        default: throw Kit.SendError.notSupportedContract
        }

        let rawData = try Protocol_Transaction.raw(serializedBytes: createdTransaction.rawDataHex)

        guard
            rawData.contract.count == 1,
            let contractMessage = rawData.contract.first,
            try contractMessage.parameter.value == (contract.protoMessage.serializedData())
        else {
            throw Kit.SendError.abnormalSend
        }

        let signature = try signer.signature(hash: createdTransaction.txID)

        var transaction = Protocol_Transaction()
        transaction.rawData = rawData
        transaction.signature = [signature]

        try await tronGridProvider.broadcastTransaction(hexData: transaction.serializedData())

        return createdTransaction
    }
}
