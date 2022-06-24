//
//  HomeScreen.swift
//  FacebookTimeline
//
//  Created by Doniyor on 23/06/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack {
                    // light line
                    HStack {
                    }
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray .opacity(0.1))
                    
                    // profile and status
                    HStack {
                        Image("d")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                        Text("What's on your mind?")
                        Spacer()
                    }
                    .frame(height: 60)
                    .padding(.horizontal, 8)
                    
                    // medium line
                    HStack {
                    }
                    .frame(height: 1.5)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray .opacity(0.2))
                    
                    // live, photo and room
                    HStack {
                        Spacer()
                        
                        HStack {
                            ZStack {
                                Image(systemName: "video")
                                    .resizable()
                                    .frame(width: 26, height: 18)
                                
                                Image(systemName: "eye")
                                    .resizable()
                                    .frame(width: 10, height: 8)
                                    .padding(.leading, -7)
                            }
                            Text("Live")
                                .font(.headline)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "photo.on.rectangle.angled")
                            Text("Photo")
                                .font(.headline)
                        }
                        
                        Spacer()
                        
                        HStack {
                            ZStack {
                                Image(systemName: "video")
                                    .resizable()
                                    .frame(width: 26, height: 18)
                                
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 10, height: 8)
                                    .padding(.leading, -7)
                            }
                            Text("Room")
                                .font(.headline)
                        }
                        
                        Spacer()
                    }
                    .frame(height: 30)
                }
                
                VStack {
                    // heavy line
                    HStack {
                    }
                    .frame(height: 7)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray .opacity(0.2))
                    
                    // room items and create room
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 22) {
                                // frame shape, create room and icon
                                ZStack {
                                    RoundedRectangle(cornerRadius: 60)
                                        .stroke(Color.purple .opacity(0.5), lineWidth: 2.5)
                                        .frame(width: 130, height: 60)
                                    
                                    HStack(spacing: 10) {
                                        ZStack {
                                            Image(systemName: "video")
                                                .resizable()
                                                .frame(width: 30, height: 20)
                                            
                                            Image(systemName: "plus")
                                                .resizable()
                                                .frame(width: 14, height: 10)
                                                .padding(.leading, -8)
                                        }
                                        
                                        // label create room
                                        VStack {
                                            Text("Create")
                                                .font(.headline)
                                                .foregroundColor(.purple)
                                            Text("Room")
                                                .font(.headline)
                                                .foregroundColor(.purple)
                                        }
                                    }
                                }
                                
                                HStack {
                                    RoomItems(profileImage: "profile_1", isOnline: false)
                                    RoomItems(profileImage: "profile_2", isOnline: true)
                                    RoomItems(profileImage: "d", isOnline: true)
                                    RoomItems(profileImage: "profile_3", isOnline: true)
                                    RoomItems(profileImage: "profile_1", isOnline: false)
                                    RoomItems(profileImage: "profile_2", isOnline: true)
                                }
                            }
                            .padding(.horizontal, 10)
                        }
                        .frame(height: 90)
                        .frame(maxWidth: .infinity)
                    }
                    
                    // heavy line
                    HStack {
                    }
                    .frame(height: 7)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray .opacity(0.2))
                }
                
                VStack {
                    // story items
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                HStack {
                                    ZStack(alignment: .top) {
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(Color.gray .opacity(0.2))
                                            .frame(width: 150, height: 230)
                                        
                                        Image("image_3")
                                            .resizable()
                                            .frame(width: 150, height: 143)
                                            .scaledToFill()
                                            .cornerRadius(25)

                                        VStack(alignment: .center) {
                                            Spacer()

                                            Image(systemName: "plus")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                                .cornerRadius(25)
                                                .background(
                                                    Circle()
                                                        .fill(Color.blue)
                                                        .frame(width: 38, height: 38)
                                                )
                                                .foregroundColor(.white)
                                                .overlay(
                                                    Circle()
                                                        .stroke(Color.white, lineWidth: 3.5)
                                                        .frame(width: 42, height: 42)
                                                )
                                            
                                            Text("Create a")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                                .foregroundColor(.black .opacity(0.7))
                                            
                                            Text("Story")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                                .foregroundColor(.black .opacity(0.7))
                                        }
                                        .padding(.leading, 15)
                                        .padding(.vertical, 15)
                                    }
                                    .frame(width: 150, height: 230)
                                    .cornerRadius(25)
                                }
                                StoryItems(avatar: "d", storyImage: "image_1", firstName: "Mark", lastName: "Antony")
                                StoryItems(avatar: "profile_1", storyImage: "image_2", firstName: "Luis", lastName: "Jerald")
                                StoryItems(avatar: "profile_2", storyImage: "image_3", firstName: "Tom", lastName: "Clark")
                                StoryItems(avatar: "d", storyImage: "image_1", firstName: "Anna", lastName: "Robertson")
                                StoryItems(avatar: "profile_1", storyImage: "image_2", firstName: "Hermes", lastName: "Brush")
                                StoryItems(avatar: "d", storyImage: "image_3", firstName: "Usyk", lastName: "Joshua")
                            }
                            .padding(.horizontal, 8)
                        }
                    }
                    
                }
                .padding(.vertical, 5)
                
                
                VStack {
                    // heavy line
                    HStack {
                    }
                    .frame(height: 7)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray .opacity(0.2))
                    
                    VStack {
                        PostItems(online: true, image_url: "postImage_1", image_profile: "profile_1", profileName: "Donald Gage")
                        PostItems(online: false, image_url: "postImage_2", image_profile: "profile_2", profileName: "Rose Paterson")
                    }
                }
                
                
            }
            .navigationBarItems(
                leading:
                    Text("facebook")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue),
                trailing: HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.gray .opacity(0.2))
                            .frame(width: 32, height: 32)
                        Image(systemName: "magnifyingglass")
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.gray .opacity(0.2))
                            .frame(width: 32, height: 32)
                        Image("mes")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
            )
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
