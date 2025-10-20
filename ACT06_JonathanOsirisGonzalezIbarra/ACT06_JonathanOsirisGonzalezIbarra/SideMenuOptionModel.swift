//
//  SideMenuOptionModel.swift
//  ACT06_JonathanOsirisGonzalezIbarra
//
//  Created by Jonathan Gonzalez on 08/10/25.
//

import SwiftUI

enum SideMenuOption: String, CaseIterable, Identifiable {
    case login = "Login"
    case edad = "Edad"
    case contador = "Contador"
    case imc = "IMC"
    case ajustes = "Ajustes"

    var id: String { rawValue }

    var systemImageName: String {
        switch self {
        case .login: return "person.crop.circle.badge.checkmark"
        case .edad: return "calendar"
        case .contador: return "plusminus.circle"
        case .imc: return "figure"
        case .ajustes: return "gearshape"
        }
    }

    var title: String { rawValue }
}

