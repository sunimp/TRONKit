//
//  Balance.swift
//  TRONKit
//
//  Created by Sun on 2023/5/2.
//

import Foundation

import BigInt
import GRDB

// MARK: - Balance

class Balance: Record {
    // MARK: Nested Types

    enum Columns: String, ColumnExpression {
        case id
        case balance
    }

    // MARK: Overridden Properties

    override class var databaseTableName: String {
        "balances"
    }

    // MARK: Properties

    let id: String
    var balance: BigUInt

    // MARK: Lifecycle

    init(id: String, balance: BigUInt) {
        self.id = id
        self.balance = balance

        super.init()
    }

    required init(row: Row) throws {
        id = row[Columns.id]
        balance = row[Columns.balance]

        try super.init(row: row)
    }

    // MARK: Overridden Functions

    override func encode(to container: inout PersistenceContainer) {
        container[Columns.id] = id
        container[Columns.balance] = balance
    }
}

// MARK: - BigUInt + DatabaseValueConvertible

#if compiler(>=6)
extension BigUInt: @retroactive DatabaseValueConvertible { }
#else
extension BigUInt: DatabaseValueConvertible { }
#endif

extension BigUInt {
    public var databaseValue: DatabaseValue {
        description.databaseValue
    }

    public static func fromDatabaseValue(_ dbValue: DatabaseValue) -> BigUInt? {
        if case let DatabaseValue.Storage.string(value) = dbValue.storage {
            return BigUInt(value)
        }

        return nil
    }
}
