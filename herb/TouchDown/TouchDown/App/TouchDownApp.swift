//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by 김은혜 on 2023/08/21.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
