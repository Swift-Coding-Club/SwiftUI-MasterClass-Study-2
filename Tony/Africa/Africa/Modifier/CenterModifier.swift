//
//  CenterModifier.swift
//  Africa
//
//  Created by Tony Lim on 2023/08/20.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
