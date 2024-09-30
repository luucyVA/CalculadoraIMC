//
//  ContentView.swift
//  CursoiOS
//
//  Created by Lucía Villa on 10/09/24.
//

import SwiftUI

struct Ejercicio1: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.orange)
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.yellow)
            }
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack{
                Circle()
                    .frame(width: 150)
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                Circle()
                    .frame(width: 150)
                    .foregroundColor(.purple)
            }
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
                .foregroundColor(.black)
            HStack{
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.orange)
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.yellow)
            }
           
        }
        .background(.red)
    }
}

#Preview {
    Ejercicio1 ()
}
