//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Tony Lim on 2023/08/27.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
