//
//  CenterModifier.swift
//  Africa
//
//  Created by 김은혜 on 2023/08/21.
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
