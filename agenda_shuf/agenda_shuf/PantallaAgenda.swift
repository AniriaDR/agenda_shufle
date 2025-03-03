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
        ScrollView{
            VStack(spacing: 10) {
                ForEach(contactos){ contacto in
                    contacto_prevista(contacto_a_mostar: contacto, al_pulsar: {print("Te envia saludos \(contacto.nombre) desde la pantalla de agendar")})}
            }
        }
        .frame(alignment: Alignment.center)
        .padding(10)
        .background(Color.cyan)
        
        Spacer()
        
        HStack (alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "plus")
                    .background(Color.red)
                    .offset(x: 0, y: -25)
    
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
            }
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "shuffle")
                    .background(Color.red)
                    .offset(x: 0, y: -25)
    
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte") }
            
                .onTapGesture {
                    print("Lanzar un intent para iniciar la llamada")
                }
        }
        
    }
}

#Preview {
    PantallaAgenda()
}
