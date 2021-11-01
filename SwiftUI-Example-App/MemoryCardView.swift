//
//  MemoryCardView.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-28.
//

import SwiftUI

struct MemoryCardView: View {
    
    @ObservedObject var card: Card
    
    var body: some View {
        Button(action: {
            card.isOpen.toggle()
        }) {
            Image(systemName: card.isOpen ? card.image : "giftcard")

        }
        .buttonStyle(MemoryButtonStyle())
    }
}

struct MemoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MemoryCardView(card: Card(image: "airplane"))
        }
    }
}
