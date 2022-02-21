//
//  ColorRectangle.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 21.02.2022.
//

import SwiftUI

struct ColorRectangle: View {
    
    @State var color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 100)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 5)
                    .foregroundColor(.white)
            )
            .padding()
            .foregroundColor(Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>))
    }
}

//struct ColorRectangle_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorRectangle()
//    }
//}
