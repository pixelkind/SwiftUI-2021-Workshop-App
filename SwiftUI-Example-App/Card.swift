//
//  Card.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-11-01.
//

import Foundation
import Combine

class Card: ObservableObject {
    
    let id = UUID().uuidString
    let image: String
    @Published var isOpen = false
    @Published var isDisabled = false
    
    init(image: String) {
        self.image = image
    }
    
}
