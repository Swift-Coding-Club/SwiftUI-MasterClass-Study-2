//
//  DevoteWidgetBundle.swift
//  DevoteWidget
//
//  Created by 김은혜 on 2023/08/27.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidget()
        DevoteWidgetLiveActivity()
    }
}
