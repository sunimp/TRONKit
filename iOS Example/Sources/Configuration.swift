//
//  Configuration.swift
//  TRONKit-Demo
//
//  Created by Sun on 2024/8/21.
//

import UIKit

import SWToolKit
import TRONKit

class Configuration {
    static let shared = Configuration()

    let network: Network = .nileTestnet
    let minLogLevel: Logger.Level = .verbose

    let defaultsWords = "hollow mechanic fortune usual gallery bird test spoil system scissors public trim"
    let defaultsWatchAddress = "TBGMfBsxMZNGtvMJQAP82U3ftW5STiKM1q"
    let defaultSendAddress = "TPewTqxnG9vUFNf2y4g7UgQcAfLcSuJQLH"
    let defaultTrc20ContractAddress = "TXLAQ63Xg1NAzckPwKHvzw7CSEmLMEqcdj"
}
