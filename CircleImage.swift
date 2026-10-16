//
//  CircleImage.swift
//  UiApp
//
//  Created by Rahman on 15/10/26.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtle")
            .resizable()
            .scaledToFit()
            .frame(width: 150,height: 150)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white,lineWidth:4)
            }
            .shadow(radius: 7)
        
    }
}


#Preview {
    CircleImage()
}
