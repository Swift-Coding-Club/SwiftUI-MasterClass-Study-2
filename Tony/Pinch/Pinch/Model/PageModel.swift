//
//  PageModel.swift
//  Pinch
//
//  Created by Tony Lim on 2023/08/13.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
