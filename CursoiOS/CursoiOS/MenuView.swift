//
//  MenuView.swift
//  CursoiOS
//
//  Created by Lucía Villa on 17/09/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                NavigationLink(destination:IMCView()){
                    Text("Calculadora de IMC")
                }
                Text ("App2")
                Text ("App3")
                Text ("App4")
                Text ("App5")
            }
        }
    }
}

#Preview {
    MenuView()
}
