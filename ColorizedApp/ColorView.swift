//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 19.02.2022.
//

import SwiftUI

struct ColorView: View {
//    @Binding var colorView: Color
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
//        Color(red: red / 255, green: green / 255, blue: blue / 255)
        RoundedRectangle(cornerRadius: 10)
                   .frame(height: 100)
                   .overlay(
                       RoundedRectangle(cornerRadius: 10)
                           .stroke(lineWidth: 5)
                           .foregroundColor(.white)
                   )
                   .padding()
                   .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
    }
}

