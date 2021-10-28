//
//  MemoryCardView.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-28.
//

import SwiftUI

struct MemoryCardView: View {
    @Binding var cardIsOpen: Bool
    
    var body: some View {
        Button(action: {
            cardIsOpen.toggle()
        }) {
            Image(systemName: cardIsOpen ? "airplane" : "giftcard")

        }
        .buttonStyle(MemoryButtonStyle())
    }
}

struct MemoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MemoryCardView(cardIsOpen: .constant(true))
            MemoryCardView(cardIsOpen: .constant(false))
        }
    }
}
