//
//  EventHelper.swift
//  TronKit
//
//  Created by Sun on 2024/8/21.
//

import Foundation

enum EventHelper {
    static func eventFromRecord(record: Trc20EventRecord) -> Event? {
        switch record.type {
        case "Transfer": return Trc20TransferEvent(record: record)
        case "Approval": return Trc20ApproveEvent(record: record)
        default: return nil
        }
    }
}
