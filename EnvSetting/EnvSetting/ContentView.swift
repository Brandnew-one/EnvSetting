//
//  ContentView.swift
//  EnvSetting
//
//  Created by Bran on 2023/05/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)

      #if DEV
      Text("Hello, DEV world!")
      #elseif STAGE
      Text("Hello, STAGE world!")
      #else
      Text("Hello, world!")
      #endif
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
