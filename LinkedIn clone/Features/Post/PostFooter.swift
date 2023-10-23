//
//  PostFooter.swift
//  LinkedIn clone
//
//  Created by Halil Focic on 21. 10. 2023..
//

import SwiftUI

struct NoChevronLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}

struct PostFooter: View {
    @State private var showAlert = false
    var body: some View {
        NavigationStack {
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
                    NavigationLink{
                        PostComments()
                    } label: {
                        VStack{
                            Image(systemName:"ellipsis.message")
                            Text("Comments")
                        }
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
}

#Preview {
    PostFooter()
}
