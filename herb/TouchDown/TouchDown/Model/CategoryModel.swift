//
//  CategoryModel.swift
//  TouchDown
//
//  Created by 김은혜 on 2023/08/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
