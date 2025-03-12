//
//  contacto_info.swift
//  agenda_shuf
//
//  Created by alumno on 12/03/25.
//

import SwiftUI
var Infor = ContactoAgenda(nombre: "Canelita", telefono: "123456789", imagen: "canelita")

struct ContactoInfo: View {
    var ContInfo: ContactoAgenda
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 250)
                .tint(Color.red)
                .foregroundColor(Color(red: 1, green: 0.80, blue: 0.99))

            Image(ContInfo.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 150)
        }
        VStack{
            Text(ContInfo.nombre)
            Text(ContInfo.telefono)
            
        }
        .bold()
        .background(Color(red: 1, green: 0.80, blue: 0.99, opacity: 0.4))
    }
    
}


#Preview {
    ContactoInfo(ContInfo: Infor)
}
