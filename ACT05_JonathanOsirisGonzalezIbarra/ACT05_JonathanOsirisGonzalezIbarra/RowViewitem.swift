//
//  Untitled.swift
//  ACT05_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 07/10/25.
//

import SwiftUI

struct RowViewitem: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelected: Bool{
        return selectedOption == option
    }
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
            
            Image(systemName: "chevron.forward")
                .imageScale(.small)

        }
        
        .padding(.leading)
        .padding(.trailing)
        .foregroundColor(.black)
        .frame(width:220, height: 48)
        .background(isSelected ? .gray.opacity(0.18): .clear)
        .cornerRadius(24)
    }
}

#Preview {
    RowViewitem(option: .search, selectedOption: .constant(.search))
}
