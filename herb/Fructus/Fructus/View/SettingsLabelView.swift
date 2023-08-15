//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by 김은혜 on 2023/08/13.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTY
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
