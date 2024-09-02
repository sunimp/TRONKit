//
//  JsonRpc.swift
//
//  Created by Sun on 2023/5/2.
//

import Foundation

import ObjectMapper

class JsonRpc<T> {
    // MARK: Properties

    private let method: String
    private let params: [Any]

    // MARK: Lifecycle

    init(method: String, params: [Any] = []) {
        self.method = method
        self.params = params
    }

    // MARK: Functions

    func parameters(id: Int = 1) -> [String: Any] {
        [
            "jsonrpc": "2.0",
            "method": method,
            "params": params,
            "id": id,
        ]
    }

    func parse(result _: Any) throws -> T {
        fatalError("This method should be overridden")
    }

    func parse(response: JsonRpcResponse) throws -> T {
        switch response {
        case let .success(successResponse):
            guard let result = successResponse.result else {
                throw JsonRpcResponse.ResponseError.invalidResult(value: successResponse.result)
            }

            return try parse(result: result)

        case let .error(errorResponse):
            throw JsonRpcResponse.ResponseError.rpcError(errorResponse.error)
        }
    }
}
