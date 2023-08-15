//
//  PageModel.swift
//  Pinch
//
//  Created by 김은혜 on 2023/08/04.
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
