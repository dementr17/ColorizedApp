//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var valueSliderRed = Double.random(in: 0...255)
    @State private var valueSliderGreen = Double.random(in: 0...255)
    @State private var valueSliderBlue = Double.random(in: 0...255)
    
    @State private var colorView: Color = Color(
        red: 0.5,
        green: 0.5,
        blue: 0.5
    )
    
//    @State private var stringValueRed: String = ""
//    @State private var stringValueGreen: String = ""
//    @State private var stringValueBlue: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.yellow)
            
            VStack {
//                ColorView(colorView: $colorView)
//                ColorStack(
//                    valueSlider: $valueSliderRed,
//                    valueSliderRed: $valueSliderRed,
//                    valueSliderGreen: $valueSliderGreen,
//                    valueSliderBlue: $valueSliderBlue,
//                    colorView: $colorView,
//                    stringValue: $stringValueRed,
//                    color: .red
//                )
                Spacer()
                
                ColorView(red: valueSliderRed, green: valueSliderGreen, blue: valueSliderBlue)
                
                ColorStack(valueSlider: $valueSliderRed, color: .red)
                
                ColorStack(valueSlider: $valueSliderGreen, color: .green)
                
                ColorStack(valueSlider: $valueSliderBlue, color: .blue)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
