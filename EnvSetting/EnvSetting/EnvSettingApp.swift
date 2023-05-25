//
//  EnvSettingApp.swift
//  EnvSetting
//
//  Created by Bran on 2023/05/24.
//

import SwiftUI

@main
struct EnvSettingApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .onAppear {
          print(Configuration.getDeployPhase())
        }
    }
  }
}
