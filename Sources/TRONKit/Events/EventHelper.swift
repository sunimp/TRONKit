//
//  EventHelper.swift
//  TRONKit
//
//  Created by Sun on 2024/9/3.
//

import Foundation

enum EventHelper {
    static func eventFromRecord(record: TRC20EventRecord) -> Event? {
        switch record.type {
        case "Transfer": TRC20TransferEvent(record: record)
        case "Approval": TRC20ApproveEvent(record: record)
        default: nil
        }
    }
}
