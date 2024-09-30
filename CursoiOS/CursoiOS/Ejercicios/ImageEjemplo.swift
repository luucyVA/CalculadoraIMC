//
//  ImageEjemplo.swift
//  CursoiOS
//
//  Created by Lucía Villa on 17/09/24.
//

import SwiftUI

struct ImageEjemplo: View {
    var body: some View {
       Image("mirrorball")
        //atributo para que cambie de tamaño
            .resizable()
        //atributo para que la imagen no se desfigure
        //Fill hara que que ocupe todo el espacio posible,
        //Fit hara que entre en los espacios que se le dan com .frame
            .scaledToFill()
            .frame( width: 200, height: 200)
        
        Image(systemName: "heart")
            .resizable() 
            .frame( width: 200, height: 200)
            
        
    }
}

#Preview {
    ImageEjemplo()
}
