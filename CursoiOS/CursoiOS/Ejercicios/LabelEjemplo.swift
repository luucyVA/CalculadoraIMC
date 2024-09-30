//
//  LabelEjemplo.swift
//  CursoiOS
//
//  Created by Lucía Villa on 17/09/24.
//

import SwiftUI

struct LabelEjemplo: View {
    var body: some View {
       Label(
        
        title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ },
        icon: { Image("mirrorball")
                .resizable()
                .scaledToFit()
                .frame(height: 30)}

       )
    }
}

#Preview {
    LabelEjemplo()
}
