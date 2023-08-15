//
//  FructusApp.swift
//  Fructus
//
//  Created by 김은혜 on 2023/08/11.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding { // Onboarding
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
