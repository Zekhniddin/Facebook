//
//  CreateStoryItem.swift
//  Facebook
//
//  Created by Зехниддин on 27/01/21.
//

import SwiftUI

struct CreateStoryItem: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Image("ic_polat_alemdar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150.0, height: 250.0 * 2.0 / 3.0)
                Spacer()
                VStack(alignment: .center) {
                    Text("Create a")
                        .fontWeight(.semibold)
                    Text("Story")
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 8)
                .font(.system(size: 20))
            }
            Image(systemName: "plus.circle.fill")
                .foregroundColor(.blue)
                .background(Color.white)
                .clipShape(Circle())
                .font(.system(size: 48))
                .offset(y: 42.0)
        }
        .frame(width: 150, height: 250)
        .background(Color.gray.opacity(0.12))
        .cornerRadius(15)
    }
    
}

struct CreateStoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CreateStoryItem()
    }
}
