//
//  Shop.swift
//  TouchDown
//
//  Created by Tony Lim on 2023/08/27.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
