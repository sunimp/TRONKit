//
//  storage_contract.pb.swift
//  TRONKit
//
//  Created by Sun on 2023/5/26.
//

// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/contract/storage_contract.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// MARK: - _GeneratedWithProtocGenSwiftVersion

/// If the compiler emits an error on this type, it is because this file
/// was generated by a version of the `protoc` Swift plug-in that is
/// incompatible with the version of SwiftProtobuf to which you are linking.
/// Please ensure that you are building against the same version of the API
/// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 { }
    typealias Version = _2
}

// MARK: - Protocol_BuyStorageBytesContract

struct Protocol_BuyStorageBytesContract {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var ownerAddress: Data = .init()

    /// storage bytes for buy
    var bytes: Int64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_BuyStorageContract

struct Protocol_BuyStorageContract {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var ownerAddress: Data = .init()

    /// trx quantity for buy storage (sun)
    var quant: Int64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_SellStorageContract

struct Protocol_SellStorageContract {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var ownerAddress: Data = .init()

    var storageBytes: Int64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_UpdateBrokerageContract

struct Protocol_UpdateBrokerageContract {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var ownerAddress: Data = .init()

    /// 1 mean 1%
    var brokerage: Int32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Protocol_BuyStorageBytesContract: @unchecked Sendable { }
extension Protocol_BuyStorageContract: @unchecked Sendable { }
extension Protocol_SellStorageContract: @unchecked Sendable { }
extension Protocol_UpdateBrokerageContract: @unchecked Sendable { }
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "protocol"

// MARK: - Protocol_BuyStorageBytesContract + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_BuyStorageBytesContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".BuyStorageBytesContract"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "owner_address"),
        2: .same(proto: "bytes"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &ownerAddress)
            case 2: try decoder.decodeSingularInt64Field(value: &bytes)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !ownerAddress.isEmpty {
            try visitor.visitSingularBytesField(value: ownerAddress, fieldNumber: 1)
        }
        if bytes != 0 {
            try visitor.visitSingularInt64Field(value: bytes, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_BuyStorageBytesContract, rhs: Protocol_BuyStorageBytesContract) -> Bool {
        if lhs.ownerAddress != rhs.ownerAddress {
            return false
        }
        if lhs.bytes != rhs.bytes {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_BuyStorageContract + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_BuyStorageContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".BuyStorageContract"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "owner_address"),
        2: .same(proto: "quant"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &ownerAddress)
            case 2: try decoder.decodeSingularInt64Field(value: &quant)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !ownerAddress.isEmpty {
            try visitor.visitSingularBytesField(value: ownerAddress, fieldNumber: 1)
        }
        if quant != 0 {
            try visitor.visitSingularInt64Field(value: quant, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_BuyStorageContract, rhs: Protocol_BuyStorageContract) -> Bool {
        if lhs.ownerAddress != rhs.ownerAddress {
            return false
        }
        if lhs.quant != rhs.quant {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_SellStorageContract + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_SellStorageContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".SellStorageContract"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "owner_address"),
        2: .standard(proto: "storage_bytes"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &ownerAddress)
            case 2: try decoder.decodeSingularInt64Field(value: &storageBytes)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !ownerAddress.isEmpty {
            try visitor.visitSingularBytesField(value: ownerAddress, fieldNumber: 1)
        }
        if storageBytes != 0 {
            try visitor.visitSingularInt64Field(value: storageBytes, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_SellStorageContract, rhs: Protocol_SellStorageContract) -> Bool {
        if lhs.ownerAddress != rhs.ownerAddress {
            return false
        }
        if lhs.storageBytes != rhs.storageBytes {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_UpdateBrokerageContract + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_UpdateBrokerageContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".UpdateBrokerageContract"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "owner_address"),
        2: .same(proto: "brokerage"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &ownerAddress)
            case 2: try decoder.decodeSingularInt32Field(value: &brokerage)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !ownerAddress.isEmpty {
            try visitor.visitSingularBytesField(value: ownerAddress, fieldNumber: 1)
        }
        if brokerage != 0 {
            try visitor.visitSingularInt32Field(value: brokerage, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_UpdateBrokerageContract, rhs: Protocol_UpdateBrokerageContract) -> Bool {
        if lhs.ownerAddress != rhs.ownerAddress {
            return false
        }
        if lhs.brokerage != rhs.brokerage {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}
