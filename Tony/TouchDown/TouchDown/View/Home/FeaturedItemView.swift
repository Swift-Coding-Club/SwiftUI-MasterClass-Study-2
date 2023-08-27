//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Tony Lim on 2023/08/27.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTY
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
