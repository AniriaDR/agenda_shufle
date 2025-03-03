//
//  pantalla_agregar_contacto.swift
//  agenda_shuf
//
//  Created by alumno on 03/03/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.cyan)
            TextField("Place holder", text: $nombre)
                //.border(Rectangle(), width: 15)
        }
        .padding(10)
        
        Text("Colocar el campo de numero telefonico")
        TextField("Place holder numeros", text: $numero_telefonico)
            .frame(height: 35)
            .padding(10)
        
        HStack{
            Icono(tamaño: 25, ruta_icon: "person.crop.circle.badge.plus", padding: 10)
            Spacer()
            Icono(tamaño: 25, ruta_icon: "return")
                .background(nombre == "" ? Color.red: Color.cyan)

        }
        .background(Color.cyan)
        
    }
}

#Preview {
    PantallaAgregarContacto()
}
