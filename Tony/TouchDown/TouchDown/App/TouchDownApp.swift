//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Tony Lim on 2023/08/23.
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
