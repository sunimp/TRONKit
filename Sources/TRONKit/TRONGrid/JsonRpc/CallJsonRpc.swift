//
//  CallJsonRpc.swift
//  TRONKit
//
//  Created by Sun on 2023/6/9.
//

import Foundation

import SWExtensions

class CallJsonRpc: DataJsonRpc {
    init(contractAddress: Address, data: Data) {
        super.init(
            method: "eth_call",
            params: [
                ["to": contractAddress.nonPrefixed.sw.hexString, "data": data.sw.hexString],
                "latest",
            ]
        )
    }
}
