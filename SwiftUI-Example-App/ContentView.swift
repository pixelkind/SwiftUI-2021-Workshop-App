//
//  ContentView.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {}) {
                    Image(systemName: "airplane")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: 80, height: 80)
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
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
