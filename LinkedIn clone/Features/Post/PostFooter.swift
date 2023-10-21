//
//  PostFooter.swift
//  LinkedIn clone
//
//  Created by Halil Focic on 21. 10. 2023..
//

import SwiftUI

struct PostFooter: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName:"hand.thumbsup.fill")
                    .resizable().frame(width: 8,height: 8)
                    .foregroundColor(.white)
                    .frame(width: 16,height: 16)
                    .background(Circle().fill(Color.blue))
                Text("8,899")
                Spacer()
                Text("261 comments  •")
                Text("179 reposts")
                    
            }
            .foregroundStyle(Color.gray)
            .fontWeight(.medium)
            .font(.system(size: 14))
            .padding(.horizontal)
            .padding(.vertical, 5)
            
            Divider().padding(.horizontal)
            
            HStack(){
                
                VStack{
                    Image(systemName:"hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                VStack{
                    Image(systemName:"ellipsis.message")
                    Text("Comment")
                }
                Spacer()
                VStack{
                    Image(systemName:"arrow.triangle.2.circlepath")
                    Text("Repost")
                }
                Spacer()
                VStack{
                    Image(systemName:"paperplane.fill")
                    Text("Send")
                }
                
            }
            .font(.system(size: 14))
            .fontWeight(.medium)
            .padding(.horizontal, 30)
            .padding(.vertical, 1)
            .foregroundStyle(Color.black.opacity(0.7))
            
            
        }
    }
}

#Preview {
    PostFooter()
}
