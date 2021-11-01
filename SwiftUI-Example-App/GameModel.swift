//
//  GameModel.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-11-01.
//

import Foundation

class GameModel: ObservableObject {
    
    var cards: [Card] = []
    
    init() {
        let symbols = ["iphone", "laptopcomputer", "ipod", "iphone.homebutton", "applewatch", "homepod", "airpodspro", "appletv"]
        
        for index in 0..<symbols.count {
            for _ in 0..<2 {
                let card = Card(image: symbols[index])
                cards.append(card)
            }
        }
        cards.shuffle()
    }
    
}
