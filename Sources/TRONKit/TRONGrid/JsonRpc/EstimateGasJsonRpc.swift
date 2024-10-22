//
//  EstimateGasJsonRpc.swift
//  TRONKit
//
//  Created by Sun on 2023/6/2.
//

import Foundation

import BigInt

class EstimateGasJsonRpc: IntJsonRpc {
    init(from: Address, to: Address?, amount: BigUInt?, gasPrice: Int, data: Data?) {
        var params: [String: Any] = [
            "from": from.raw.sw.hexString,
        ]

        if let to {
            params["to"] = to.raw.sw.hexString
        }
        if let amount {
            params["value"] = "0x" + (amount == 0 ? "0" : amount.serialize().sw.hex.sw.removeLeadingZeros())
        }
        params["gasPrice"] = "0x" + String(gasPrice, radix: 16).sw.removeLeadingZeros()
        if let data {
            params["data"] = data.sw.hexString
        }

        super.init(
            method: "eth_estimateGas",
            params: [params]
        )
    }
}
