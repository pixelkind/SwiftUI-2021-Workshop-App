//
//  ContentView.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var game = GameModel()
    
    @State private var cardIsOpen = Array(repeating: false, count: 16)
    
    var body: some View {
        NavigationView {
            VStack {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    
                    ForEach(game.cards, id: \.id) { card in
                        MemoryCardView(card: card)
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
