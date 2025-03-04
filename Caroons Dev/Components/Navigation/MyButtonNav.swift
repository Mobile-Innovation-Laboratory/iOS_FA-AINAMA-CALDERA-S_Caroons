//
//  MyButtonNav.swift
//  Caroons Dev
//
//  Created by Fa Ainama Caldera S  on 04/03/25.
//

import SwiftUI

struct MyButtonNav: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notification")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MyButtonNav()
}
