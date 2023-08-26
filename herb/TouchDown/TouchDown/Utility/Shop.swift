//
//  Shop.swift
//  TouchDown
//
//  Created by 김은혜 on 2023/08/26.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
