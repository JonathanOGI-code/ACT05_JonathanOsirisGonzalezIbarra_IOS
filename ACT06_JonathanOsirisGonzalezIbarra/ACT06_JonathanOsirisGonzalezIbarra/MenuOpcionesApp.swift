//
//  MenuOpcionesApp.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

@main
struct MenuOpcionesApp: App {
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkModeOn ? .dark : .light)
        }
    }
}
