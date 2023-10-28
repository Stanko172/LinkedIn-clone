//
//  HomeView.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 21. 10. 2023..
//

import SwiftUI

struct HomeView: View {
    var posts = ModelData().posts
    var body: some View {
        NavigationStack {
            Spacer()
            ScrollView{
                ForEach(posts) { post in
                    Post(post: post)
                }
            }
            .listStyle(.plain)
            .listRowSpacing(12)
            .background(Color.gray.opacity(0.2))
        }
    }
}

#Preview {
    HomeView()
}
