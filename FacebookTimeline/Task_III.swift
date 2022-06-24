//
//  Task_III.swift
//  FacebookTimeline
//
//  Created by Doniyor on 24/06/22.
//

import SwiftUI

struct Task_III: View {
    var online: Bool = true
    var image_first: String = "it_park_1"
    var image_second: String = "it_park_2"
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
                        Text("5d  •")
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
                Text("Bilmaydiganlar uchun frilans - bu odamni jismoniy va psixologik jihatdan cheklamaydigan o‘ziga xos onlayn ish platformasi. Frilanser - mustaqil mutaxassis bo‘lib, u dasturchi, kopirayter, dizayner va hatto advokat bo‘lishi mumkin.")
                    .padding(.leading, 10)
                    .padding(.vertical, 10)
                    .lineLimit(4)
                
                // main photo
                HStack(spacing: 0) {
                    Image(image_first)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 4)
                        .scaledToFill()
                    
                    Image(image_second)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 4)
                        .scaledToFill()
                }
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
                
                Text("39")
                Text("Share")
                    .font(.headline)
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

struct Task_III_Previews: PreviewProvider {
    static var previews: some View {
        Task_III()
    }
}
