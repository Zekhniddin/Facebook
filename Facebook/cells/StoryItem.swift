//
//  StoryItem.swift
//  Facebook
//
//  Created by Зехниддин on 27/01/21.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("ic_story")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 250)
            VStack(alignment: .leading) {
                Image("ic_person1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.blue, lineWidth: 5)
                    )
                Spacer()
                Text("Jumayev")
                    .fontWeight(.bold)
                Text("Mehriddin")
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            .font(.system(size: 17))
            .padding(10)
            
        }
        .frame(width: 150, height: 250)
        .cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
