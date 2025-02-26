//
//  PantallaAgenda.swift
//  agenda_shuf
//
//  Created by alumno on 26/02/25.
//

import SwiftUI

var contactos = [
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
    ContactoAgenda(nombre: "Teto", telefono: "123456789"),
]

struct PantallaAgenda: View {
    var body: some View {
        List{
            VStack {
                ForEach(contactos){ contacto in
                    Text("\(contacto.nombre)")
                contacto_prevista()
                }
                
            }
            .background(Color.pink)
        }
        
    }
}

#Preview {
    PantallaAgenda()
}
