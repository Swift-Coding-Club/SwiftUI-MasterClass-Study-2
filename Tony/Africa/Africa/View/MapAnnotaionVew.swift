//
//  MapAnnotaionVew.swift
//  Africa
//
//  Created by Tony Lim on 2023/08/20.
//

import SwiftUI

struct MapAnnotaionVew: View {
    //MARK: - PROPERTIES
    
    var location: NationParkLocation
    @State private var animation: Double = 0.0
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }//: ZSTACK
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotaionVew_Previews: PreviewProvider {
    static var locations: [NationParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotaionVew(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
