//
//  Configuration.swift
//  EnvSetting
//
//  Created by Bran on 2023/05/25.
//

import Foundation

enum DeployPhase: String {
  case prod
  case stage
  case dev
}

final class Configuration {
  private init() { }

  private static let configKey = "DeployPhase"

  // MARK: - Get Current DeployPhase
  static func getDeployPhase() -> DeployPhase {
    guard
      let configValue = Bundle.main.object(forInfoDictionaryKey: configKey) as? String,
      let phase = DeployPhase(rawValue: configValue)
    else {
      return DeployPhase.dev
    }
    return phase
  }
}
