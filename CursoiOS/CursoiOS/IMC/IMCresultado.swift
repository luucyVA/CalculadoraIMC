 //
//  IMCresultado.swift
//  CursoiOS
//
//  Created by Lucía Villa on 23/09/24.
//

import SwiftUI

struct IMCresultado: View {
    let userHeight: Double
    let userWeigth:Double 
    var body: some View {
        VStack{
            Text("Tu resultado es:")
            let result = calculateIMC(weight: userWeigth, height: userHeight)
            InformationView(result: result)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundColor(.white )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}
func calculateIMC (weight:Double, height:Double) -> Double{
    let result = weight/((height/100)*(height/100))
      return result
}

struct InformationView: View {
    let result:Double
    var body: some View {
        
        let information = getImcResult(result: result)
        
        VStack{
            Text(information.0)
                .foregroundColor(.green)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
            Text(information.1)
                .font(.title2 )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
        .cornerRadius(20)
        .padding(16)
    }
}
func getImcResult (result: Double) ->(String, String, Color){
    let title:String
    let description:String
    let color:Color
    
    switch result{
    case 0.00...19.99:
        title = "Peso bajo"
    description = "Estás por debajo del peso recomendado según el IMC"
    color = .yellow
    case 20.00...24.99:
        title = "Peso normal"
    description = "Estás en el peso recomendado según el IMC"
    color = .green
    case 25.00...29.99:
    title = "Sobrepeso"
    description = "Estás por encima del peso recomendado según el IMC"
    color = .orange
    case 30.00...100:
        title = "Obesidad"
    description = "Estás muy por encima del peso recomendado según el IMC"
    color = .red
    default:
        title = "ERROR"
    description = "Ha ocurrido un error"
    color = .gray
    }
    
    return (title, description, color )
}


#Preview {
    IMCresultado(userHeight: 80, userWeigth: 190)
}
