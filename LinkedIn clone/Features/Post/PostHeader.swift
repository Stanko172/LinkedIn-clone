//
//  PostHeader.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 21. 10. 2023..
//

import SwiftUI

struct PostHeader: View {
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text("freeCodeCamp")
                    .fontWeight(.semibold)
                Text("1,234,324 followers")
                    .font(.caption)
                    .foregroundColor(Color.gray)
                HStack {
                    Text("21h")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }
            }
            Spacer()
            Image(systemName: "ellipsis")
                .font(.title)
                .foregroundStyle(Color.gray)
        }
        .padding()
    }
}

#Preview {
    PostHeader()
}
