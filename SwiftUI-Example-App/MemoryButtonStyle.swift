//
//  MemoryButtonStyle.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-28.
//

import SwiftUI

struct MemoryButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? 1.4 : 1)
            .frame(width: 80, height: 80)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}
