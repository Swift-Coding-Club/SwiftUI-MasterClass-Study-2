//
//  VideoModel.swift
//  Africa
//
//  Created by Tony Lim on 2023/08/20.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
