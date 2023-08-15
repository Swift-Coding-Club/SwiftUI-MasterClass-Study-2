//
//  StartButtinView.swift
//  Fruits
//
//  Created by Tony Lim on 2023/08/13.
//

import SwiftUI

struct StartButtinView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }//: BUTTON
        .accentColor(.white)
        

    }
}

//MARK: - PREVIEW

struct StartButtinView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtinView()
            .previewLayout(.sizeThatFits)
    }
}
