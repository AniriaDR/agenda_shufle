//
//  PantallaAgenda.swift
//  agenda_shuf
//
//  Created by alumno on 26/02/25.
//

import SwiftUI

struct PantallaAgenda: View {
    var body: some View {
        List{
            VStack {
                ForEach(0...45, id: \.self){ _ in
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
