//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by 김은혜 on 2023/07/29.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User pressed the Button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight, ], startPoint: .top, endPoint: .bottom)
                :
                // B: When the Button is not pressed
                
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
