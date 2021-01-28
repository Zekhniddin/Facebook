//
//  CreateRoomItem.swift
//  Facebook
//
//  Created by Зехниддин on 27/01/21.
//

import SwiftUI

struct CreateRoomItem: View {
    var body: some View {
        HStack(spacing: 6) {
            Image("ic_room")
                .resizable()
                .frame(width: 42, height: 42)
            VStack(alignment: .leading, spacing: 0) {
                Text("Create")
                    .fontWeight(.semibold)
                Text("Room")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.blue)
            .font(.title3)
        }
        .frame(height: 60)
        .padding(.horizontal, 24)
        .overlay(
            Capsule()
                .stroke(Color.blue.opacity(0.4), lineWidth: 2)
        )
    }
}

struct CreateRoomItem_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomItem()
    }
}
