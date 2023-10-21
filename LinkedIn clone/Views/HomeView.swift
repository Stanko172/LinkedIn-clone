//
//  HomeView.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 21. 10. 2023..
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        List{
            Post().listRowInsets(EdgeInsets()).listRowSeparator(.hidden)
            Post().listRowInsets(EdgeInsets()).listRowSeparator(.hidden)
            Post().listRowInsets(EdgeInsets()).listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .listRowSpacing(12)
        .background(Color.gray.opacity(0.2))
        
        
    }
}

#Preview {
    HomeView()
}
