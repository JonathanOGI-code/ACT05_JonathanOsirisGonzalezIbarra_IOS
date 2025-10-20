//
//  ViewController.swift
//  ACT05_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 07/10/25.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedTab: Int
    @State private var selectedOption: SideMenuOptionModel?
    @State private var darkMode = false
    
    var body: some View {
        ZStack {
            if isShowing {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
            }
            // Aquí puedes agregar el contenido del menú lateral
        }
        
        HStack{
            VStack(alignment: .leading, .spacing: 32.0 {
                
                VStack{
                    ForEach(SideMenuOptionModel?.allCases){ option in
                        RowViewitem(option: option, selectedOption: $selectedOption)
                        onTapGesture{
                            
                        }
                        
                    }
                }
            }
        }
    }
                   
    private func onOptionTapped(_option:SideMenuOptionModel){
        selectedOption = option
        selectedTab = option.rawValue
        isShowing = false
                
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}

enum SideMenuOptionModel: Int, CaseIterable, Identifiable {
    case home, performance, profile, search, notifications, chats
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notifications:
            return "Notifications"
        case .chats:
            return "Chats"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell"
        case .chats:
            return "text.bubble"
        }
    }
}
