//
//  shield_contract.pb.swift
//  TRONKit
//
//  Created by Sun on 2023/5/26.
//

// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/contract/shield_contract.proto
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

// MARK: - Protocol_AuthenticationPath

struct Protocol_AuthenticationPath {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var value: [Bool] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_MerklePath

struct Protocol_MerklePath {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var authenticationPaths: [Protocol_AuthenticationPath] = []

    var index: [Bool] = []

    var rt: Data = .init()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_OutputPoint

struct Protocol_OutputPoint {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var hash: Data = .init()

    var index: Int32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_OutputPointInfo

struct Protocol_OutputPointInfo {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var outPoints: [Protocol_OutputPoint] = []

    var blockNum: Int32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_PedersenHash

struct Protocol_PedersenHash {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var content: Data = .init()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_IncrementalMerkleTree

struct Protocol_IncrementalMerkleTree {
    // MARK: Properties

    var parents: [Protocol_PedersenHash] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    fileprivate var _left: Protocol_PedersenHash?
    fileprivate var _right: Protocol_PedersenHash?

    // MARK: Computed Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var left: Protocol_PedersenHash {
        get { _left ?? Protocol_PedersenHash() }
        set { _left = newValue }
    }

    /// Returns true if `left` has been explicitly set.
    var hasLeft: Bool { _left != nil }
    var right: Protocol_PedersenHash {
        get { _right ?? Protocol_PedersenHash() }
        set { _right = newValue }
    }

    /// Returns true if `right` has been explicitly set.
    var hasRight: Bool { _right != nil }

    // MARK: Lifecycle

    init() { }

    // MARK: Functions

    /// Clears the value of `left`. Subsequent reads from it will return its default value.
    mutating func clearLeft() { _left = nil }

    /// Clears the value of `right`. Subsequent reads from it will return its default value.
    mutating func clearRight() { _right = nil }
}

// MARK: - Protocol_IncrementalMerkleVoucher

struct Protocol_IncrementalMerkleVoucher {
    // MARK: Properties

    var filled: [Protocol_PedersenHash] = []

    var cursorDepth: Int64 = 0

    var rt: Data = .init()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    private var _tree: Protocol_IncrementalMerkleTree?
    private var _cursor: Protocol_IncrementalMerkleTree?
    private var _outputPoint: Protocol_OutputPoint?

    // MARK: Computed Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var tree: Protocol_IncrementalMerkleTree {
        get { _tree ?? Protocol_IncrementalMerkleTree() }
        set { _tree = newValue }
    }

    /// Returns true if `tree` has been explicitly set.
    var hasTree: Bool { _tree != nil }
    var cursor: Protocol_IncrementalMerkleTree {
        get { _cursor ?? Protocol_IncrementalMerkleTree() }
        set { _cursor = newValue }
    }

    /// Returns true if `cursor` has been explicitly set.
    var hasCursor: Bool { _cursor != nil }
    var outputPoint: Protocol_OutputPoint {
        get { _outputPoint ?? Protocol_OutputPoint() }
        set { _outputPoint = newValue }
    }

    /// Returns true if `outputPoint` has been explicitly set.
    var hasOutputPoint: Bool { _outputPoint != nil }

    // MARK: Lifecycle

    init() { }

    // MARK: Functions

    /// Clears the value of `tree`. Subsequent reads from it will return its default value.
    mutating func clearTree() { _tree = nil }

    /// Clears the value of `cursor`. Subsequent reads from it will return its default value.
    mutating func clearCursor() { _cursor = nil }

    /// Clears the value of `outputPoint`. Subsequent reads from it will return its default value.
    mutating func clearOutputPoint() { _outputPoint = nil }
}

// MARK: - Protocol_IncrementalMerkleVoucherInfo

struct Protocol_IncrementalMerkleVoucherInfo {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var vouchers: [Protocol_IncrementalMerkleVoucher] = []

    var paths: [Data] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_SpendDescription

struct Protocol_SpendDescription {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var valueCommitment: Data = .init()

    /// merkle root
    var anchor: Data = .init()

    /// used for check double spend
    var nullifier: Data = .init()

    /// used for check spend authority signature
    var rk: Data = .init()

    var zkproof: Data = .init()

    var spendAuthoritySignature: Data = .init()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_ReceiveDescription

struct Protocol_ReceiveDescription {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var valueCommitment: Data = .init()

    var noteCommitment: Data = .init()

    /// for Encryption
    var epk: Data = .init()

    /// Encryption for incoming, decrypt it with ivk
    var cEnc: Data = .init()

    /// Encryption for audit, decrypt it with ovk
    var cOut: Data = .init()

    var zkproof: Data = .init()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

// MARK: - Protocol_ShieldedTransferContract

struct Protocol_ShieldedTransferContract {
    // MARK: Properties

    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// transparent address
    var transparentFromAddress: Data = .init()

    var fromAmount: Int64 = 0

    var spendDescription: [Protocol_SpendDescription] = []

    var receiveDescription: [Protocol_ReceiveDescription] = []

    var bindingSignature: Data = .init()

    /// transparent address
    var transparentToAddress: Data = .init()

    /// the amount to transparent to_address
    var toAmount: Int64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    // MARK: Lifecycle

    init() { }
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Protocol_AuthenticationPath: @unchecked Sendable { }
extension Protocol_MerklePath: @unchecked Sendable { }
extension Protocol_OutputPoint: @unchecked Sendable { }
extension Protocol_OutputPointInfo: @unchecked Sendable { }
extension Protocol_PedersenHash: @unchecked Sendable { }
extension Protocol_IncrementalMerkleTree: @unchecked Sendable { }
extension Protocol_IncrementalMerkleVoucher: @unchecked Sendable { }
extension Protocol_IncrementalMerkleVoucherInfo: @unchecked Sendable { }
extension Protocol_SpendDescription: @unchecked Sendable { }
extension Protocol_ReceiveDescription: @unchecked Sendable { }
extension Protocol_ShieldedTransferContract: @unchecked Sendable { }
#endif // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "protocol"

// MARK: - Protocol_AuthenticationPath + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_AuthenticationPath: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".AuthenticationPath"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "value"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeRepeatedBoolField(value: &value)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !value.isEmpty {
            try visitor.visitPackedBoolField(value: value, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_AuthenticationPath, rhs: Protocol_AuthenticationPath) -> Bool {
        if lhs.value != rhs.value {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_MerklePath + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_MerklePath: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".MerklePath"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "authentication_paths"),
        2: .same(proto: "index"),
        3: .same(proto: "rt"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeRepeatedMessageField(value: &authenticationPaths)
            case 2: try decoder.decodeRepeatedBoolField(value: &index)
            case 3: try decoder.decodeSingularBytesField(value: &rt)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !authenticationPaths.isEmpty {
            try visitor.visitRepeatedMessageField(value: authenticationPaths, fieldNumber: 1)
        }
        if !index.isEmpty {
            try visitor.visitPackedBoolField(value: index, fieldNumber: 2)
        }
        if !rt.isEmpty {
            try visitor.visitSingularBytesField(value: rt, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_MerklePath, rhs: Protocol_MerklePath) -> Bool {
        if lhs.authenticationPaths != rhs.authenticationPaths {
            return false
        }
        if lhs.index != rhs.index {
            return false
        }
        if lhs.rt != rhs.rt {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_OutputPoint + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_OutputPoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".OutputPoint"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "hash"),
        2: .same(proto: "index"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &hash)
            case 2: try decoder.decodeSingularInt32Field(value: &index)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !hash.isEmpty {
            try visitor.visitSingularBytesField(value: hash, fieldNumber: 1)
        }
        if index != 0 {
            try visitor.visitSingularInt32Field(value: index, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_OutputPoint, rhs: Protocol_OutputPoint) -> Bool {
        if lhs.hash != rhs.hash {
            return false
        }
        if lhs.index != rhs.index {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_OutputPointInfo + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_OutputPointInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".OutputPointInfo"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "out_points"),
        2: .standard(proto: "block_num"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeRepeatedMessageField(value: &outPoints)
            case 2: try decoder.decodeSingularInt32Field(value: &blockNum)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !outPoints.isEmpty {
            try visitor.visitRepeatedMessageField(value: outPoints, fieldNumber: 1)
        }
        if blockNum != 0 {
            try visitor.visitSingularInt32Field(value: blockNum, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_OutputPointInfo, rhs: Protocol_OutputPointInfo) -> Bool {
        if lhs.outPoints != rhs.outPoints {
            return false
        }
        if lhs.blockNum != rhs.blockNum {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_PedersenHash + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_PedersenHash: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".PedersenHash"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "content"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &content)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !content.isEmpty {
            try visitor.visitSingularBytesField(value: content, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_PedersenHash, rhs: Protocol_PedersenHash) -> Bool {
        if lhs.content != rhs.content {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_IncrementalMerkleTree + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_IncrementalMerkleTree: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".IncrementalMerkleTree"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "left"),
        2: .same(proto: "right"),
        3: .same(proto: "parents"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularMessageField(value: &_left)
            case 2: try decoder.decodeSingularMessageField(value: &_right)
            case 3: try decoder.decodeRepeatedMessageField(value: &parents)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if let v = _left {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        try { if let v = self._right {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        } }()
        if !parents.isEmpty {
            try visitor.visitRepeatedMessageField(value: parents, fieldNumber: 3)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_IncrementalMerkleTree, rhs: Protocol_IncrementalMerkleTree) -> Bool {
        if lhs._left != rhs._left {
            return false
        }
        if lhs._right != rhs._right {
            return false
        }
        if lhs.parents != rhs.parents {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_IncrementalMerkleVoucher + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_IncrementalMerkleVoucher: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".IncrementalMerkleVoucher"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "tree"),
        2: .same(proto: "filled"),
        3: .same(proto: "cursor"),
        4: .standard(proto: "cursor_depth"),
        5: .same(proto: "rt"),
        10: .standard(proto: "output_point"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularMessageField(value: &_tree)
            case 2: try decoder.decodeRepeatedMessageField(value: &filled)
            case 3: try decoder.decodeSingularMessageField(value: &_cursor)
            case 4: try decoder.decodeSingularInt64Field(value: &cursorDepth)
            case 5: try decoder.decodeSingularBytesField(value: &rt)
            case 10: try decoder.decodeSingularMessageField(value: &_outputPoint)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every if/case branch local when no optimizations
        // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
        // https://github.com/apple/swift-protobuf/issues/1182
        if let v = _tree {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if !filled.isEmpty {
            try visitor.visitRepeatedMessageField(value: filled, fieldNumber: 2)
        }
        try { if let v = self._cursor {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        } }()
        if cursorDepth != 0 {
            try visitor.visitSingularInt64Field(value: cursorDepth, fieldNumber: 4)
        }
        if !rt.isEmpty {
            try visitor.visitSingularBytesField(value: rt, fieldNumber: 5)
        }
        try { if let v = self._outputPoint {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
        } }()
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_IncrementalMerkleVoucher, rhs: Protocol_IncrementalMerkleVoucher) -> Bool {
        if lhs._tree != rhs._tree {
            return false
        }
        if lhs.filled != rhs.filled {
            return false
        }
        if lhs._cursor != rhs._cursor {
            return false
        }
        if lhs.cursorDepth != rhs.cursorDepth {
            return false
        }
        if lhs.rt != rhs.rt {
            return false
        }
        if lhs._outputPoint != rhs._outputPoint {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_IncrementalMerkleVoucherInfo + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_IncrementalMerkleVoucherInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".IncrementalMerkleVoucherInfo"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "vouchers"),
        2: .same(proto: "paths"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeRepeatedMessageField(value: &vouchers)
            case 2: try decoder.decodeRepeatedBytesField(value: &paths)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !vouchers.isEmpty {
            try visitor.visitRepeatedMessageField(value: vouchers, fieldNumber: 1)
        }
        if !paths.isEmpty {
            try visitor.visitRepeatedBytesField(value: paths, fieldNumber: 2)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_IncrementalMerkleVoucherInfo, rhs: Protocol_IncrementalMerkleVoucherInfo) -> Bool {
        if lhs.vouchers != rhs.vouchers {
            return false
        }
        if lhs.paths != rhs.paths {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_SpendDescription + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_SpendDescription: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".SpendDescription"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "value_commitment"),
        2: .same(proto: "anchor"),
        3: .same(proto: "nullifier"),
        4: .same(proto: "rk"),
        5: .same(proto: "zkproof"),
        6: .standard(proto: "spend_authority_signature"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &valueCommitment)
            case 2: try decoder.decodeSingularBytesField(value: &anchor)
            case 3: try decoder.decodeSingularBytesField(value: &nullifier)
            case 4: try decoder.decodeSingularBytesField(value: &rk)
            case 5: try decoder.decodeSingularBytesField(value: &zkproof)
            case 6: try decoder.decodeSingularBytesField(value: &spendAuthoritySignature)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !valueCommitment.isEmpty {
            try visitor.visitSingularBytesField(value: valueCommitment, fieldNumber: 1)
        }
        if !anchor.isEmpty {
            try visitor.visitSingularBytesField(value: anchor, fieldNumber: 2)
        }
        if !nullifier.isEmpty {
            try visitor.visitSingularBytesField(value: nullifier, fieldNumber: 3)
        }
        if !rk.isEmpty {
            try visitor.visitSingularBytesField(value: rk, fieldNumber: 4)
        }
        if !zkproof.isEmpty {
            try visitor.visitSingularBytesField(value: zkproof, fieldNumber: 5)
        }
        if !spendAuthoritySignature.isEmpty {
            try visitor.visitSingularBytesField(value: spendAuthoritySignature, fieldNumber: 6)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_SpendDescription, rhs: Protocol_SpendDescription) -> Bool {
        if lhs.valueCommitment != rhs.valueCommitment {
            return false
        }
        if lhs.anchor != rhs.anchor {
            return false
        }
        if lhs.nullifier != rhs.nullifier {
            return false
        }
        if lhs.rk != rhs.rk {
            return false
        }
        if lhs.zkproof != rhs.zkproof {
            return false
        }
        if lhs.spendAuthoritySignature != rhs.spendAuthoritySignature {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_ReceiveDescription + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_ReceiveDescription: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ReceiveDescription"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "value_commitment"),
        2: .standard(proto: "note_commitment"),
        3: .same(proto: "epk"),
        4: .standard(proto: "c_enc"),
        5: .standard(proto: "c_out"),
        6: .same(proto: "zkproof"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &valueCommitment)
            case 2: try decoder.decodeSingularBytesField(value: &noteCommitment)
            case 3: try decoder.decodeSingularBytesField(value: &epk)
            case 4: try decoder.decodeSingularBytesField(value: &cEnc)
            case 5: try decoder.decodeSingularBytesField(value: &cOut)
            case 6: try decoder.decodeSingularBytesField(value: &zkproof)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !valueCommitment.isEmpty {
            try visitor.visitSingularBytesField(value: valueCommitment, fieldNumber: 1)
        }
        if !noteCommitment.isEmpty {
            try visitor.visitSingularBytesField(value: noteCommitment, fieldNumber: 2)
        }
        if !epk.isEmpty {
            try visitor.visitSingularBytesField(value: epk, fieldNumber: 3)
        }
        if !cEnc.isEmpty {
            try visitor.visitSingularBytesField(value: cEnc, fieldNumber: 4)
        }
        if !cOut.isEmpty {
            try visitor.visitSingularBytesField(value: cOut, fieldNumber: 5)
        }
        if !zkproof.isEmpty {
            try visitor.visitSingularBytesField(value: zkproof, fieldNumber: 6)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_ReceiveDescription, rhs: Protocol_ReceiveDescription) -> Bool {
        if lhs.valueCommitment != rhs.valueCommitment {
            return false
        }
        if lhs.noteCommitment != rhs.noteCommitment {
            return false
        }
        if lhs.epk != rhs.epk {
            return false
        }
        if lhs.cEnc != rhs.cEnc {
            return false
        }
        if lhs.cOut != rhs.cOut {
            return false
        }
        if lhs.zkproof != rhs.zkproof {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}

// MARK: - Protocol_ShieldedTransferContract + SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding

extension Protocol_ShieldedTransferContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
    SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ShieldedTransferContract"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "transparent_from_address"),
        2: .standard(proto: "from_amount"),
        3: .standard(proto: "spend_description"),
        4: .standard(proto: "receive_description"),
        5: .standard(proto: "binding_signature"),
        6: .standard(proto: "transparent_to_address"),
        7: .standard(proto: "to_amount"),
    ]

    mutating func decodeMessage(decoder: inout some SwiftProtobuf.Decoder) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try decoder.decodeSingularBytesField(value: &transparentFromAddress)
            case 2: try decoder.decodeSingularInt64Field(value: &fromAmount)
            case 3: try decoder.decodeRepeatedMessageField(value: &spendDescription)
            case 4: try decoder.decodeRepeatedMessageField(value: &receiveDescription)
            case 5: try decoder.decodeSingularBytesField(value: &bindingSignature)
            case 6: try decoder.decodeSingularBytesField(value: &transparentToAddress)
            case 7: try decoder.decodeSingularInt64Field(value: &toAmount)
            default: break
            }
        }
    }

    func traverse(visitor: inout some SwiftProtobuf.Visitor) throws {
        if !transparentFromAddress.isEmpty {
            try visitor.visitSingularBytesField(value: transparentFromAddress, fieldNumber: 1)
        }
        if fromAmount != 0 {
            try visitor.visitSingularInt64Field(value: fromAmount, fieldNumber: 2)
        }
        if !spendDescription.isEmpty {
            try visitor.visitRepeatedMessageField(value: spendDescription, fieldNumber: 3)
        }
        if !receiveDescription.isEmpty {
            try visitor.visitRepeatedMessageField(value: receiveDescription, fieldNumber: 4)
        }
        if !bindingSignature.isEmpty {
            try visitor.visitSingularBytesField(value: bindingSignature, fieldNumber: 5)
        }
        if !transparentToAddress.isEmpty {
            try visitor.visitSingularBytesField(value: transparentToAddress, fieldNumber: 6)
        }
        if toAmount != 0 {
            try visitor.visitSingularInt64Field(value: toAmount, fieldNumber: 7)
        }
        try unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Protocol_ShieldedTransferContract, rhs: Protocol_ShieldedTransferContract) -> Bool {
        if lhs.transparentFromAddress != rhs.transparentFromAddress {
            return false
        }
        if lhs.fromAmount != rhs.fromAmount {
            return false
        }
        if lhs.spendDescription != rhs.spendDescription {
            return false
        }
        if lhs.receiveDescription != rhs.receiveDescription {
            return false
        }
        if lhs.bindingSignature != rhs.bindingSignature {
            return false
        }
        if lhs.transparentToAddress != rhs.transparentToAddress {
            return false
        }
        if lhs.toAmount != rhs.toAmount {
            return false
        }
        if lhs.unknownFields != rhs.unknownFields {
            return false
        }
        return true
    }
}
