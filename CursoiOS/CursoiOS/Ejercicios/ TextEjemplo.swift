//
//   TextEjemplo.swift
//  CursoiOS
//
//  Created by Lucía Villa on 12/09/24.
//

import SwiftUI

struct _TextEjemplo: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle )
            Text("Luchys")
                  .font(.system(
                size: 40, weight:  .bold, design: .monospaced))
                .italic()
                .underline()
                .foregroundColor(.pink )
                .background(.blue)
            Text("Lucy, Lucy, Lucy")
                .frame(width: 150)
                .lineLimit(3)
                .lineSpacing(125)
        }
          
    }
}

#Preview {
    _TextEjemplo()
}
