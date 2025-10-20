//
//  ContentView.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selected: SideMenuOption? = .login
    @State private var isMenuVisible: Bool = true  // cambiar a false si quieres que inicie oculto

    var body: some View {
        NavigationStack {
            HStack(spacing: 0) {
                if isMenuVisible {
                    SideMenu(selected: $selected)
                        .frame(minWidth: 220, maxWidth: 260)
                        .background(.ultraThinMaterial)
                }

                Divider()

                ZStack {
                    switch selected {
                    case .login: LoginView()
                    case .edad: EdadView()
                    case .contador: ContadorView()
                    case .imc: IMCView()
                    case .ajustes: AjustesView()
                    case .none: Text("Selecciona una opción en el menú")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationTitle(selected?.title ?? "MenuOpciones")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        withAnimation(.spring) { isMenuVisible.toggle() }
                    } label: {
                        Image(systemName: "sidebar.left")
                    }
                }
            }
        }
    }
}

struct SideMenu: View {
    @Binding var selected: SideMenuOption?

    var body: some View {
        List(selection: $selected) {
            ForEach(SideMenuOption.allCases) { option in
                HStack(spacing: 12) {
                    Image(systemName: option.systemImageName)
                        .imageScale(.large)
                    Text(option.title)
                        .font(.headline)
                }
                .padding(.vertical, 6)
                .contentShape(Rectangle())
                .onTapGesture { selected = option }
            }
        }
        .listStyle(.sidebar)
    }
}
