//
//  IMCView.swift
//  CursoiOS
//
//  Created by Lucía Villa on 18/09/24.
//

import SwiftUI

struct IMCView: View {
    @State var edad:Int = 5
    @State var gender:Int = 0
    @State var weight = 12
    @State var height:Double = 100
    var body: some View {
        VStack{
            HStack{
                ToogleButton(text: "Hombre", imageName: "star.fill" , index: 0, gender: 1, selectedGender: $gender)
                ToogleButton(text: "Mujer", imageName: "heart.fill" , index: 1, gender: 1, selectedGender: $gender)
            }
            calculadorAltura(selectedHeight: $height)
            HStack{
                CounterButton(text: "Edad", number: $edad)
                CounterButton(text: "Peso", number: $weight)
            }
            IMCcalculateButton(userHeight: (height), userWeigth: Double(weight) )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar{
            ToolbarItem(placement: .principal) {
                Text("Conoce tu IMC")
                    .bold() 
                    .foregroundColor(.white)
            }
        }
    }
}
struct IMCcalculateButton:View {
    let userHeight: Double
    let userWeigth:Double
    var body: some View {
        NavigationStack {
            NavigationLink(destination:{IMCresultado(userHeight: userHeight , userWeigth: userWeigth)}){
                Text("Calcular")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity,  maxHeight: 100) 
                    .background(.backgroundComponent)
            }
        }
    }
}

struct ToogleButton: View {
    let text:String
    let imageName:String
    let index: Int
    let gender:Int
    @Binding var selectedGender:Int
    var body: some View {
        let color = if (gender == selectedGender){
            Color.backgroundSelected
        }else{
            Color.backgroundComponent
        }
        Button(action:{
             selectedGender = gender
        }) {
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
           
        }
    }
}
struct InformationText: View {
    let text:String
    var body: some View {
        Text(text)
            .font(.largeTitle )
            .bold()
            .foregroundColor(.white)
        
            
    }
}
struct TitleText: View {
    let text:String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}


struct  calculadorAltura: View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value:$selectedHeight, in:100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}
 
struct  CounterButton: View {
    let text: String
    @Binding var number:Int
    var body: some View {
        VStack{
            TitleText(text:text)
             InformationText (text: String(number))
            HStack{
                Button( action:{
                    if (number > 0){
                        number -= 1
                    }
                }){
                    ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName:"minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
                Button( action:{
                    if (number < 100){
                        number += 1
                    }
                }){
                      ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName:"plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

 



#Preview {
  IMCView()
}
