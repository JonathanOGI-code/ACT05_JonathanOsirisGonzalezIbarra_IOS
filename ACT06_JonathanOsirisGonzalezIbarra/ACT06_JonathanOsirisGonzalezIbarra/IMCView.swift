//
//  IMCView.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

struct IMCView: View {
    @State private var peso: String = ""     // kg
    @State private var estatura: String = "" // metros (ej. 1.70)
    @State private var resultado: String = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Calculadora IMC")
                    .font(.largeTitle.bold())

                TextField("Peso (kg)", text: $peso)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                TextField("Estatura (m)", text: $estatura)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                Button("Calcular IMC") {
                    calcular()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.accentColor.opacity(0.15))
                .clipShape(RoundedRectangle(cornerRadius: 14))

                if !resultado.isEmpty {
                    Text(resultado)
                        .font(.title3.weight(.semibold))
                }

                Spacer(minLength: 20)
            }
            .padding()
        }
    }

    private func calcular() {
        guard let p = Double(peso), let e = Double(estatura), p > 0, e > 0 else {
            resultado = "Datos inválidos. Ingresa números positivos."
            return
        }
        let imc = p / (e * e)

        let clasificacion: String = {
            switch imc {
            case ..<18.5: return "Bajo peso"
            case 18.5..<25: return "Normal"
            case 25..<30: return "Sobrepeso"
            default: return "Obesidad"
            }
        }()

        resultado = String(format: "IMC: %.2f — %@", imc, clasificacion)
    }
}
