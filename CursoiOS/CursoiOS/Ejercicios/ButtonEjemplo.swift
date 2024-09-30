//
//  ButtonEjemplo.swift
//  CursoiOS
//
//  Created by Lucía Villa on 17/09/24.
//

import SwiftUI

struct ButtonEjemplo: View {
    var body: some View {
        Button("Hola"){
            print("Holiwi")
        }
        Button(action: {print("Hola")}, label: {
            Text("Hola")
                .frame(width: 100, height: 50)
            //color del texto dentro del boton
                .foregroundColor(.white)
            //fondo del boton
                .background(.pink)
            //para quitar esquinas del boton
                .cornerRadius(29)
        })
    }
}
struct Conter:View {
    //Las variables State son las que nos permiten modificar la vista, siempre antes del body 
    @State var suscriptores = 0
    var body: some View {
        Button(action: {
             suscriptores += 1
        }, label: {
            Text("Suscriptores: \(suscriptores )")
                .bold()
                .font(.title)
                .frame( height: 50)
                .foregroundColor(.white)
                .background(.purple )
                .cornerRadius(20)
            
        })
    }
}

 
#Preview {
    Conter()
}
