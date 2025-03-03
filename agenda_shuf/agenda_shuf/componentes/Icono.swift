//
//  Icono.swift
//  agenda_shuf
//
//  Created by alumno on 03/03/25.
//

import SwiftUI

struct Icono: View {
    var tamaño: CGFloat
    var ruta_icon: String
    var padding: CGFloat = 10
    var body: some View {
        Image(systemName: ruta_icon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: tamaño, height: tamaño)
            .padding(padding)
    }
}

#Preview {
    Icono(tamaño: 50, ruta_icon: "")
}
