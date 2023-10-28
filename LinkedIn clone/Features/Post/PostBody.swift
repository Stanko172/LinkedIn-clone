//
//  PostBody.swift
//  LinkedIn clone
//
//  Created by Halil Focic on 21. 10. 2023..
//

import SwiftUI

struct PostBody: View {
    var description:String
    var picture:String
    var body: some View {
        VStack(){
            Text(description)
                .padding()
                .font(.system(size:14))
                .fontWeight(.medium)
                
            Image(picture).resizable().aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    PostBody(description: "Preview description", picture: "post")
}
