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
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
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
