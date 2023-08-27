//
//  NavigaionBarView.swift
//  TouchDown
//
//  Created by Tony Lim on 2023/08/27.
//

import SwiftUI

struct NavigaionBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }//: BUTTON
        }//: HSTACK
    }
}

struct NavigaionBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigaionBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
