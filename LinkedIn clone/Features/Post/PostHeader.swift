//
//  PostHeader.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 21. 10. 2023..
//

import SwiftUI

struct PostHeader: View {
    var user:User;
    var time:String;
    var body: some View {
        HStack {
            Image(user.avatar)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(user.name)
                    .fontWeight(.semibold)
                Text(user.description)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                HStack {
                    Text(time)
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
    PostHeader(user:ModelData().posts[0].user,time: ModelData().posts[0].timePosted)
}
