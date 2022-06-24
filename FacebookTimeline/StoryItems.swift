//
//  StoryItems.swift
//  FacebookTimeline
//
//  Created by Doniyor on 23/06/22.
//

import SwiftUI

struct StoryItems: View {
    var avatar: String = "d"
    var storyImage: String = "image_1"
    var firstName: String = "Michael"
    var lastName: String = "Scofield"
    
    var body: some View {
        ZStack(alignment: .topLeading) {
                Image(storyImage)
                    .resizable()
                    .frame(width: 150, height: 230)
                    .scaledToFill()

            VStack(alignment: .leading) {
                Image(avatar)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.blue, lineWidth: 3.5)
                    )
                Spacer()
                
                Text(firstName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(lastName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(.leading, 15)
            .padding(.vertical, 15)
        }
        .frame(width: 150, height: 230)
        .cornerRadius(25)
    }
}

struct StoryItems_Previews: PreviewProvider {
    static var previews: some View {
        StoryItems()
    }
}
