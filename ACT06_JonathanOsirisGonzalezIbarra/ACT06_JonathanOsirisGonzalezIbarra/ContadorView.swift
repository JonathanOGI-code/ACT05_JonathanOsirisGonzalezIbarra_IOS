//
//  ContadorView.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

struct ContadorView: View {
    @State private var valor: Int = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Contador")
                .font(.largeTitle.bold())

            Text("\(valor)")
                .font(.system(size: 60, weight: .bold, design: .rounded))

            HStack(spacing: 12) {
                Button {
                    valor -= 1
                } label: {
                    Label("Restar", systemImage: "minus.circle")
                        .frame(maxWidth: .infinity)
                }

                Button {
                    valor += 1
                } label: {
                    Label("Sumar", systemImage: "plus.circle")
                        .frame(maxWidth: .infinity)
                }
            }
            .buttonStyle(.borderedProminent)

            Button {
                valor = 0
            } label: {
                Label("Reiniciar", systemImage: "arrow.counterclockwise")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            Spacer()
        }
        .padding()
    }
}
