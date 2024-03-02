//
//  deneme.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 28.02.2024.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
                    MainPage()
                        .tabItem {
                            Label("Main", systemImage: "house")
                        }
                    
                    Text("Alerts")
                        .tabItem {
                            Label("Alerts", systemImage: "bell")
                        }
                        .badge(7)
                    
                    Text("Settings")
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
                }
    }
}

#Preview {
    TabViews()
}
