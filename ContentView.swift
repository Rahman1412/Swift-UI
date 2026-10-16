//
//  ContentView.swift
//  UiApp
//
//  Created by Rahman on 15/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            CircleImage().frame(maxWidth: .infinity,alignment: .center)
            Text("Turtle Rock")
                .font(.title)
            HStack{
                Text("Lorem ipsum dummy text")
                    .font(.subheadline)
                Spacer()
                Text("India")
                    .font(.subheadline)
            }
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets.")
        }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top).padding()
    }
}

#Preview {
    ContentView()
}
