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
        Text("Nombre de tu contacto:)")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.white)
            TextField("Nombre<3", text: $nombre)
                //.border(Rectangle(), width: 15)
        }
        .padding(10)
        
        Text("Su numero de telefono")
        TextField("Telefono<3", text: $numero_telefonico)
            .frame(height: 35)
            .padding(10)
        
        HStack{
            Icono(tamaño: 30, ruta_icon: "person.crop.circle.badge.plus", padding: 10)
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico)
                }
                .background(Color.Resolved(red: 0.98, green: 0.78, blue: 0.84))
            Spacer()
            Icono(tamaño: 25, ruta_icon: "return")
                .background(nombre == "" ? Color.pink: Color.cyan)
                .onTapGesture {
                    boton_salir()
                }

        }
        
        
    }


}


#Preview {
    PantallaAgregarContacto()
}
