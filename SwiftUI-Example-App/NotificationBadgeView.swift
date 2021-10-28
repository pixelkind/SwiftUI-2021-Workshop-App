//
//  NotificationBadgeView.swift
//  SwiftUI-Example-App
//
//  Created by Garrit Schaap on 2021-10-28.
//

import SwiftUI

struct NotificationBadgeView: View {
    private let notificationSize = 200.0
    
    var body: some View {
        VStack {
            Image(systemName: "brain.head.profile")
                .scaleEffect(3)
                .frame(width: notificationSize, height: notificationSize)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay {
                    GeometryReader { proxy in
                        let badgeSize = proxy.size.width * 0.4
                        Text("2")
                            .bold()
                            .frame(width: badgeSize, height: badgeSize)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .offset(x: proxy.size.width - badgeSize / 2, y: -badgeSize / 2)
                    }
                }
        }
    }
}

struct NotificationBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationBadgeView()
        NotificationBadgeView()
            .previewDevice("iPhone 13 Pro Max")
            .preferredColorScheme(.dark)
    }
}
