//
//  RoomItems.swift
//  FacebookTimeline
//
//  Created by Doniyor on 23/06/22.
//

import SwiftUI

struct RoomItems: View {
    var profileImage: String = "d"
    var isOnline: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(profileImage)
                .resizable()
                .frame(width: 65, height: 65)
                .cornerRadius(35)
            
            if isOnline {
                Circle()
                    .fill(Color.white)
                    .frame(width: 24, height: 24)
                    .overlay(
                        Circle()
                            .fill(Color.green)
                            .frame(width: 18, height: 18)
                    )
            }
        }
    }
}

struct RoomItems_Previews: PreviewProvider {
    static var previews: some View {
        RoomItems()
    }
}
