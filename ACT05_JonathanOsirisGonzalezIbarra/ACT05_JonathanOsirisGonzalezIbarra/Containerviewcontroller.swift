//
//  Containerviewcontroller.swift
//  ACT05_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 07/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    Text("Home")
                        .tag(0)
                    
                    Text("Dashboard")
                        .tag(1)
                    
                    Text("Profile")
                        .tag(2)
                    
                    Text("Search")
                        .tag(3)
                    
                    Text("Notifications")
                        .tag(4)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
