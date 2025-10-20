//
//  EdadView.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

struct EdadView: View {
    @State private var fechaNacimiento: Date = Calendar.current.date(byAdding: .year, value: -18, to: Date()) ?? Date()
    @State private var edadTexto: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Calcula tu edad")
                .font(.largeTitle.bold())

            DatePicker("Fecha de nacimiento", selection: $fechaNacimiento, displayedComponents: .date)
                .datePickerStyle(.graphical)

            Button("Calcular edad") {
                edadTexto = calcularEdad(nacimiento: fechaNacimiento)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.accentColor.opacity(0.15))
            .clipShape(RoundedRectangle(cornerRadius: 14))

            if !edadTexto.isEmpty {
                Text(edadTexto)
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.primary)
            }

            Spacer()
        }
        .padding()
    }

    private func calcularEdad(nacimiento: Date) -> String {
        let hoy = Date()
        let comp = Calendar.current.dateComponents([.year, .month, .day], from: nacimiento, to: hoy)
        let y = comp.year ?? 0
        let m = comp.month ?? 0
        let d = comp.day ?? 0
        return "Tienes \(y) años, \(m) meses y \(d) días."
    }
}
