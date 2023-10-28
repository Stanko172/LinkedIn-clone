//
//  Post.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 21. 10. 2023..
//

import SwiftUI

struct Post: View {
    var post: PostModel
    var body: some View {
        VStack{
            PostHeader(user:post.user,time:post.timePosted)
            PostBody(
                description: "Testing description",
                picture:post.picture
            )
            PostFooter(
                id: post.id,
                reactionNumber:post.reactionNumber,
                commentNumber:post.commentNumber,
                repostNumber:post.repostNumber
            )
        }.background(Color.white)
    }
}

#Preview {
    Post(post: ModelData().posts[0])
}
