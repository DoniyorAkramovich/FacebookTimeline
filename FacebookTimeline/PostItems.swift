//
//  PostItems.swift
//  FacebookTimeline
//
//  Created by Doniyor on 23/06/22.
//

import SwiftUI

struct PostItems: View {
    var online: Bool = true
    var image_url: String = "postImage_1"
    var image_profile: String = "d"
    var profileName: String = "Donald Gage"
    var body: some View {
        VStack {
            // header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(image_profile)
                        .resizable()
                        .frame(width: 65, height: 65)
                        .cornerRadius(33)
                        .overlay(
                            RoundedRectangle(cornerRadius: 33)
                                .stroke(Color.blue, lineWidth: 2.5)
                        )
                    
                    if online {
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
                
                VStack(alignment: .leading) {
                    Text(profileName)
                        .font(.headline)
                    HStack {
                        Text("7m  •")
                            .font(.subheadline)
                        Image(systemName: "person.2.fill")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                
                Image("more")
                    .padding(.top, -20)
            }
            .padding(.horizontal, 10)
            .padding(.top, 5)
            
            VStack(alignment: .leading) {
                Text("This is headquarters of Netflix")
                    .padding(.leading, 10)
                    .padding(.vertical, 10)
                    .lineLimit(4)
                
                Image(image_url)
                    .resizable()
                    .scaledToFit()
            }
            
            HStack(spacing: 5) {
                Image(systemName: "hand.thumbsup")
                Image(systemName: "heart")
                
                Spacer()
                
                Text("42 **Comments**")
                Text("18 **Shares**")
            }
            .font(.subheadline)
            .padding(.all, 10)
        }
    }
}

struct PostItems_Previews: PreviewProvider {
    static var previews: some View {
        PostItems()
    }
}
