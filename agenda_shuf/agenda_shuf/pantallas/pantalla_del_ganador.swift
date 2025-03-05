//
//  pantalla_del_ganador.swift
//  agenda_shuf
//
//  Created by alumno on 05/03/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Tom Nook", telefono: "12345")
struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    
    var body: some View {
            ZStack{
                Circle()
                    .frame(width: 250)
                    .tint(Color.red)
                    .foregroundColor(Color.green)

                Image("TomNook")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
    
            }
        VStack{
            
            Text(contacto_a_molestar.nombre)
            Text(contacto_a_molestar.telefono)
        }

            .background(Color(red: 0.85, green: 0.93, blue: 0.80))
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
