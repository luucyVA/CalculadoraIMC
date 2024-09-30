//
//  TextFieldEjemplo.swift
//  CursoiOS
//
//  Created by Lucía Villa on 17/09/24.
//

import SwiftUI

struct TextFieldEjemplo: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu e-mail: ", text: $email )
                .keyboardType(.emailAddress)
                .padding(16)
            //atributo opacity para bajar el tono del color
                .background(.gray.opacity(0.2))
                .cornerRadius(15)
                .padding(.horizontal, 35 )
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor era: \(oldValue) y el nuevo valor es: \(newValue )")
            }
            SecureField("Escribe tu contraseña:  ", text: $password )
                .keyboardType(.emailAddress)
                .padding(16)
            //atributo opacity para bajar el tono del color
                .background(.gray.opacity(0.2))
                .cornerRadius(15)
                .padding(.horizontal, 35 )
                .onChange(of: password) { oldValue, newValue in
                    print("El antiguo valor era: \(oldValue) y el nuevo valor es: \(newValue )")
            }
        }
            
            
    }
}

#Preview {
    TextFieldEjemplo()
}
