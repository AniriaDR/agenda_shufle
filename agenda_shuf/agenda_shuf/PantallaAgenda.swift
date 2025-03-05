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

    
    @State var mostrar_pantalla_agregar_contacto: Bool = true
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Canelita", telefono: "123456789")]
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
                ForEach(contactos_actuales){ contacto in
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
    
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
                mostrar_pantalla_agregar_contacto.toggle()
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
    
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte") }
            
                .onTapGesture {
                    print("Lanzar un intent para iniciar la llamada")
                }
        }
        .sheet(isPresented: $mostrar_pantalla_agregar_contacto, content: {
            PantallaAgregarContacto(
                boton_salir: {
                    mostrar_pantalla_agregar_contacto.toggle()
                },
                boton_agregar: {nombre, numero in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                    contactos_actuales.append(contacto_nuevo)
                    mostrar_pantalla_agregar_contacto.toggle()
                })
        })
    }
}

#Preview {
    PantallaAgenda()
}
