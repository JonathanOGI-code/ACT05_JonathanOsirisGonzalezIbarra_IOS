//
//  LoginView.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

struct LoginView: View {
    @State private var usuario: String = ""
    @State private var password: String = ""
    @State private var showSuccess: Bool = false
    @State private var errorMsg: String = ""

    // Credenciales “demo”
    private let demoUser = "admin"
    private let demoPass = "1234"

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Iniciar sesión")
                    .font(.largeTitle.bold())

                TextField("Usuario", text: $usuario)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding()
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                SecureField("Contraseña", text: $password)
                    .textInputAutocapitalization(.never)
                    .padding()
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                Button {
                    validar()
                } label: {
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                        Text("Acceder")
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor.opacity(0.15))
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                }

                if !errorMsg.isEmpty {
                    Text(errorMsg)
                        .foregroundStyle(.red)
                        .font(.callout)
                        .padding(.top, 4)
                }

                Text("Tips:\n• Usuario: \(demoUser)\n• Contraseña: \(demoPass)")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(.top, 8)

                Spacer(minLength: 20)
            }
            .padding()
        }
        .alert("✅ ¡Bienvenido!", isPresented: $showSuccess) {
            Button("Continuar", role: .cancel) {}
        } message: {
            Text("Inicio de sesión correcto. ¡Ya estás logueado!")
        }
    }

    private func validar() {
        if usuario == demoUser && password == demoPass {
            errorMsg = ""
            showSuccess = true   // “Toast/alerta” de éxito
        } else {
            showSuccess = false
            errorMsg = "Las credenciales no son correctas. Intenta de nuevo."
        }
    }
}
