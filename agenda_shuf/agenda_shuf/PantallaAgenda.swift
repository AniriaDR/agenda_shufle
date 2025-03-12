//
//  PantallaAgenda.swift
//  agenda_shuf
//
//  Created by alumno on 26/02/25.
//

import SwiftUI

/*var contactos = [
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
]*/


enum PantallasDisponibles: String, Identifiable{
    case pantalla_agregar, pantalla_aletoria
    
    var id: String { rawValue }
}
struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State private var imagen_seleccionada: String = "imagen"
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Canelita", telefono: "123456789", imagen: "canelita"),
        ContactoAgenda(nombre: "Totakeke", telefono: "847538458", imagen: "totakeke"),
        ContactoAgenda(nombre: "TomNook", telefono: "12345", imagen: "TomNook")
        
    ]
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 10) {
                    ForEach(contactos_actuales){ contacto in
                        NavigationLink{
                            ContactoInfo(ContInfo: contacto)
                        } label: {
                            contacto_prevista(contacto_a_mostar: contacto)}
                        }
                        
                }
            }
            .frame(alignment: Alignment.center)
            .padding(10)
            .tint(Color.black)
        }
        
        Spacer()
        
        HStack (alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.white)
                
                /*Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)*/
                Image(systemName: "plus")
    
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
            }
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.white)

                Image(systemName: "shuffle")
    
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intent para iniciar la llamada")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_aletoria
                }
        }
        .background(Color .mint)
 
        .sheet(item: $pantalla_a_mostrar){ pantalla in
            switch(pantalla){
            case .pantalla_agregar:
                PantallaAgregarContacto(
                    boton_salir: {
                        pantalla_a_mostrar = nil
                    },
                    boton_agregar: {nombre, numero, imagen_seleccionada in
                        let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero, imagen: imagen_seleccionada)
                        contactos_actuales.append(contacto_nuevo)
                        pantalla_a_mostrar = nil
                    }
                )
            case .pantalla_aletoria:
                PantallaDelGanador(
                    contacto_a_molestar: contactos_actuales.randomElement() ??
                    contactos_actuales[0])
            }
        
        }
    }
    
    
}

#Preview {
    PantallaAgenda()
}
