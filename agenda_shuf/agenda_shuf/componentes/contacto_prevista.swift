//
//  contacto_prevista.swift
//  agenda_shuf
//
//  Created by alumno on 26/02/25.
//

import SwiftUI

let  contacto_prueba = ContactoAgenda(nombre: "Miau", telefono: "1234", imagen: "canelita")
struct contacto_prevista: View {
    var contacto_a_mostar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado")}
    
    let esquinas_redondeadas = CGSize(width: 25, height: 25)
    
    
    var body: some View {
        HStack (alignment: VerticalAlignment.center) {
            Spacer()
            
            VStack {
                Image("imagen")
                Image(contacto_a_mostar.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80, alignment: .center)
            }
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                Text(contacto_a_mostar.nombre)
                Text(contacto_a_mostar.telefono)
            }
            
            .frame(maxWidth: .infinity, alignment: .leading)

            
            Spacer()
            
        }
        .frame(width: 300)
        .onTapGesture {
            al_pulsar()
        }

    }
}

#Preview {
    contacto_prevista(contacto_a_mostar: contacto_prueba)
}
