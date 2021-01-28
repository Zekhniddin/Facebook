//
//  PostItem2.swift
//  Facebook
//
//  Created by Зехниддин on 28/01/21.
//

import SwiftUI

struct PostItem2: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("ic_IT_Park")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .overlay(
                        Circle()
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("IT-Park")
                            .fontWeight(.semibold)
                            .font(.title3)
                        HStack(spacing: 6) {
                            Text("1d")
                            Circle()
                                .frame(width: 3, height: 3)
                            Image("ic_public")
                                .frame(width: 20, height: 20)
                                .opacity(0.5)
                        }
                        .foregroundColor(.gray)
                    }
                    Spacer()
                    Image("ic_more")
                }
                .padding(.top, 5)
            }
            .padding(.horizontal, 14)
            HStack {
                Text("!?")
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .font(.title)
                Text("IT sohada frilansermisiz?")
            }
            .padding(.horizontal, 14)
            .padding(.top, 6)
            HStack {
                Text("Unada oxirig...")
                Text("See More")
                    .foregroundColor(.gray)
                    .font(.title3)
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            HStack(spacing: 4) {
                Image("ic_post_IT_Park")
                    .resizable()
                    .scaledToFit()
                Image("ic_post_IT_Park")
                    .resizable()
                    .scaledToFit()
            }
            HStack {
                Image("ic_fb_like")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                Text("4")
                Spacer()
                Text("1 Share")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 14)
            .padding(.bottom, 10)
            HStack { }
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.4))
                .padding(.horizontal, 14)
            HStack {
                HStack(spacing: 5) {
                    Spacer()
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                    Spacer()
                }
                HStack(spacing: 5) {
                    Spacer()
                    Image(systemName: "bubble.left")
                    Text("Comment")
                    Spacer()
                }
                HStack(spacing: 5) {
                    Spacer()
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                    Spacer()
                }
            }
            .padding(.horizontal, 14)
            .frame(height: 50)
        }
        .padding(.top, 10)
    }
}

struct PostItem2_Previews: PreviewProvider {
    static var previews: some View {
        PostItem2()
    }
}
