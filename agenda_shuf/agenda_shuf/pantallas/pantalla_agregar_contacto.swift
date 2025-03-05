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
    
    var boton_salir: () -> Void = {
        print("t equivocaste luser")
    }
    
    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = {nombre, numero in
        print("t equivocaste luser")
    }
    
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
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico)
                }
            Spacer()
            Icono(tamaño: 25, ruta_icon: "return")
                .background(nombre == "" ? Color.red: Color.cyan)
                .onTapGesture {
                    boton_salir()
                }

        }
        .background(Color.cyan)
        
    }
}

#Preview {
    PantallaAgregarContacto()
}
