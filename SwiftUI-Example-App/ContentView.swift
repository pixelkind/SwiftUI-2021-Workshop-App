//
//  ContentView.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-25.
//

import SwiftUI

struct ContentView: View {
    @State private var cardIsOpen = Array(repeating: false, count: 16)
    
    var body: some View {
        NavigationView {
            VStack {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    
                    ForEach(0..<16) { index in
                        Button(action: {
                            cardIsOpen[index].toggle()
                        }) {
                            Image(systemName: cardIsOpen[index] ? "airplane" : "giftcard")

                        }
                        .buttonStyle(MemoryButtonStyle())
                    }
                }
            }
            .navigationTitle(Text("Memorize me"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
