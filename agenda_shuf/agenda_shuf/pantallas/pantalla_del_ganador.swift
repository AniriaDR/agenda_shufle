//
//  pantalla_del_ganador.swift
//  agenda_shuf
//
//  Created by alumno on 05/03/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Tom Nook", telefono: "12345", imagen: "TomNook")
struct PantallaDelGanador: View {
    var contacto_a_molestar: ContactoAgenda
    
    var body: some View {
        Text("El actual ganador de la isla.")
            .foregroundColor(.green)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
        ZStack{
                Circle()
                    .frame(width: 250)
                    .tint(Color.red)
                    .foregroundColor(Color.green)

            Image(contacto_a_molestar.imagen)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
    
            }
        VStack{
            Text("Felicidades a:")
                .bold()
                .font(.title3)
            Text(contacto_a_molestar.nombre)
            Text(contacto_a_molestar.telefono)
            Text("Haz ganado que nunca te pague las  bayas que debo.")
                .multilineTextAlignment(.center)
        }

            .background(Color(red: 0.85, green: 0.93, blue: 0.80))
    }
}

#Preview {
    PantallaDelGanador(contacto_a_molestar: contacto_alterno)
}
