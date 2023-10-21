//
//  ContentView.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 21. 10. 2023..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NetworkView()
                .tabItem {
                    Label("My Network", systemImage: "person.2.fill")
                }
            PostView()
                .tabItem {
                    Label("Post", systemImage: "plus.square.fill")
                }
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell.fill")
                }
            JobsView()
                .tabItem {
                    Label("Jobs", systemImage: "briefcase.fill")
                }
        }.background(Color.red)
        .tint(Color.black.opacity(0.9))
    }
}

#Preview {
    ContentView()
}
