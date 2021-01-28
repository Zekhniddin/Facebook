//
//  HomeScreen.swift
//  Facebook
//
//  Created by Зехниддин on 27/01/21.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Image("ic_profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What's on your mind?")
                    }
                    .frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 14)
                    HStack { }
                        .frame(height: 1)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.4))
                    HStack {
                        HStack(spacing: 4) {
                            Spacer()
                            Image("ic_live")
                            Text("Live")
                            Spacer()
                        }
                        VStack { }
                            .frame(width: 1, height: 35)
                            .background(Color.gray.opacity(0.4))
                        HStack(spacing: 4) {
                            Spacer()
                            Image("ic_photo")
                            Text("Photo")
                            Spacer()
                        }
                        VStack { }
                            .frame(width: 1, height: 35)
                            .background(Color.gray.opacity(0.4))
                        HStack(spacing: 4) {
                            Spacer()
                            Image("ic_room")
                            Text("Room")
                            Spacer()
                        }
                    }
                    .frame(height: 50)
                    HStack { }
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.4))
                }
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            CreateRoomItem()
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: false)
                            RoomItem(isOnline: true)
                            RoomItem(isOnline: false)
                        }
                        .padding(14)
                    }
                    HStack { }
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.4))
                }
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            CreateStoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                        }
                        .padding(14)
                    }
                    HStack { }
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.4))
                }
                
                VStack {
                    PostItem(img_url: "ic_post1")
                    PostItem(img_url: "ic_post2")
                }
                
                VStack {
                    PostItem1()
                    HStack { }
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.4))
                }
                
                VStack {
                    PostItem2()
                    HStack { }
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.4))
                }
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                ,
                trailing: HStack {
                    ZStack {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_search")
                    }
                    ZStack {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_sender")
                    }
                })
            .navigationBarTitle("", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
