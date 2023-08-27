//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by 김은혜 on 2023/08/27.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
