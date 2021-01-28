//
//  PostItem1.swift
//  Facebook
//
//  Created by Зехниддин on 28/01/21.
//

import SwiftUI

struct PostItem1: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("ic_post3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Omadbek Kosimov").fontWeight(.semibold) + Text(" updated his profile picture.")
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
            Image("ic_post3")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding(6)
                .overlay(
                    Circle()
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .padding()
                .padding(.vertical, -80)
            HStack {
                Image("ic_fb_like")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                Text("9")
            }
            .padding(.bottom, 10)
            HStack { }
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.4))
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
            .frame(height: 50)
        }
        .padding(.horizontal, 14)
        .padding(.top, 10)
    }
}

struct PostItem1_Previews: PreviewProvider {
    static var previews: some View {
        PostItem1()
    }
}
