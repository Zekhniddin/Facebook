//
//  PostItem.swift
//  Facebook
//
//  Created by Зехниддин on 28/01/21.
//

import SwiftUI

struct PostItem: View {
    var img_url = "ic_post1"
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("ic_person1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 24, height: 24)
                        Circle()
                            .fill(Color.green)
                            .frame(width: 18, height: 18)
                    }
                    
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Shoxboz Maqsudov")
                        .fontWeight(.semibold)
                    HStack(spacing: 8) {
                        Text("29m")
                        Circle()
                            .frame(width: 3, height: 3)
                        Image("ic_public")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .opacity(0.5)
                    }
                    .foregroundColor(.gray)
                }
                Spacer()
                Image("ic_more")
            }
            .font(.system(size: 18))
            .padding(.horizontal, 14)
            Text("Dòstim baxtli bòlgin💐")
                .fontWeight(.medium)
                .padding(.vertical, 4)
                .padding(.leading, 14)
            Image(img_url)
                .resizable()
                .scaledToFit()
            HStack {
                HStack(spacing: -5) {
                    Image("ic_fb_like")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(12)
                    Image("ic_fb_love")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                Text("8.4K")
                Spacer()
                Text("240 Comments")
                Text("54 Shares")
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 10)
            HStack { }
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.4))
            HStack {
                HStack {
                    Spacer()
                    Image("ic_fb_liked")
                    Text("Like")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image("ic_fb_comment")
                    Text("Comment")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image("ic_fb_share")
                    Text("Share")
                    Spacer()
                }
            }
            .frame(height: 40)
            .padding(.top, 5)
            HStack { }
                .frame(height: 10)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.4))
        }
        .padding(.top, 14)
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
