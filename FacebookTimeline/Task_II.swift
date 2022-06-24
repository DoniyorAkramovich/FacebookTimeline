//
//  Task_II.swift
//  FacebookTimeline
//
//  Created by Doniyor on 24/06/22.
//

import SwiftUI

struct Task_II: View {
    var online: Bool = true
    var image_url: String = "artur_boxer"
    var image_profile: String = "d"
    var profileName: String = "Artur Beterbiev"
    var body: some View {
        VStack {
            // header
            HStack {
                
                // Avatar image
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
                
                // Profile name, Time and Globus
                VStack(alignment: .leading) {
                    Text(profileName)
                        .font(.headline)
                    HStack {
                        Text("12h  •")
                            .font(.subheadline)
                        Image(systemName: "globe.europe.africa.fill")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                
                Image("more")
                    .padding(.top, -20)
            }
            .padding(.horizontal, 10)
            .padding(.top, 5)
            
            // Sentence
            VStack(alignment: .leading) {
                Text("All the details for Saturday's light heavyweight title fight in New York City..")
                    .padding(.leading, 10)
                    .padding(.vertical, 10)
                    .lineLimit(4)
                
                // main photo
                Image(image_url)
                    .resizable()
                    .scaledToFit()
                    .clipShape(
                        Circle()
                    )
            }
            .padding(.vertical, 10)
            
            // Blue like button
            HStack(spacing: 8) {
                Image(systemName: "hand.thumbsup.fill")
                    .background(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 22, height: 22)
                    )
                    .foregroundColor(.white)
                    .font(.caption)
                Text("328")
                    .font(.headline)
                    .foregroundColor(.black .opacity(0.7))
                Spacer()
            }
            .padding(.horizontal, 15)
            
            // medium line
            HStack {
            }
            .frame(height: 1.5)
            .frame(maxWidth: .infinity)
            .background(Color.gray .opacity(0.2))
            
            // Like, Comment and Share
            HStack(spacing: 5) {
                Spacer()
                Image(systemName: "hand.thumbsup")
                    .font(.headline)
                Text("Like")
                    .font(.headline)
                Spacer()
                Image(systemName: "bubble.left")
                    .font(.headline)
                Text("Comment")
                    .font(.headline)
                Spacer()
                Image(systemName: "arrowshape.turn.up.right")
                    .font(.headline)
                Text("Share")
                    .font(.headline)
                Spacer()

            }
            .font(.subheadline)
            .padding(.all, 10)
        }
    }
}

struct Task_II_Previews: PreviewProvider {
    static var previews: some View {
        Task_II()
    }
}
