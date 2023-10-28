//
//  PostComments.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 23. 10. 2023..
//

import SwiftUI

struct PostComments: View {
    var id: String
    
    var body: some View {
        if let index = ModelData().posts.firstIndex(where: { $0.id == id }),
           let post = ModelData().posts[index] as Optional { // Make sure the post exists at the found index
            ScrollView {
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
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 5")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 10")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 1")
                Text("Test test 15")
                
            }
        } else {
            Text("No posts found")
        }
    }
}

#Preview {
    PostComments(id: "653a9f245807b04f0cb039f2")
}
