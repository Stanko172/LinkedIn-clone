//
//  PostBody.swift
//  LinkedIn clone
//
//  Created by Halil Focic on 21. 10. 2023..
//

import SwiftUI

struct PostBody: View {
    var body: some View {
        VStack(alignment:.trailing){
            Text("Happy 9th birthday to the freeCodeCamp Community!")
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding()
                .font(.system(size:14))
                .fontWeight(.medium)
            Image("post").resizable().aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    PostBody()
}
