//
//  AjustesView.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

struct AjustesView: View {
    @AppStorage("isDarkModeOn") private var isDarkModeOn = false

    var body: some View {
        Form {
            Section("Apariencia") {
                Toggle("Modo oscuro", isOn: $isDarkModeOn)
            }

            Section("Acerca de") {
                LabeledContent("App") { Text("MenuOpciones") }
                LabeledContent("Versión") { Text("1.0") }
                LabeledContent("Autor") { Text("Tu Nombre") }
            }
        }
        .navigationTitle("Ajustes")
    }
}
