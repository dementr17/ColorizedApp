//
//  ColorStack.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 19.02.2022.
//

import SwiftUI

struct ColorStack: View {
    @State private var alertPresented = false
    @State var stringValue = ""
    
    @Binding var valueSlider: Double
    
//    @Binding var valueSliderRed: Double
//    @Binding var valueSliderGreen: Double
//    @Binding var valueSliderBlue: Double
    
//    @Binding var colorView: Color
    
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(valueSlider))")
                .frame(width: 50)
                .foregroundColor(color)
                .font(.headline)
            
            SliderViewColor(valueSlider: $valueSlider, stringValue: $stringValue, color: color)
//            SliderViewColor(
//                color: color,
//                valueSlider: $valueSlider,
//                colorView: $colorView,
//                stringValue: $stringValue,
//                valueSliderRed: $valueSliderRed,
//                valueSliderGreen: $valueSliderGreen,
//                valueSliderBlue: $valueSliderBlue)
            
            TextField("val", text: $stringValue) { isEditing in
                if isEditing {
                    stringValue = String(lround(valueSlider))
                } else  {
                    checkingFormat()
                }
            }
            .bordered()
            .foregroundColor(color)
            .alert("Wrong Format", isPresented: $alertPresented, actions: {}) {
                Text("Enter a number from 0 to 255")
            }
        }
        .padding(.horizontal)
    }
    
    private func checkingFormat() {
//        if let doubleValue = Double(stringValue) {
//            if doubleValue >= 0.0 && doubleValue <= 255.0 {
//                valueSlider = doubleValue
//            }
//            else {
//                alertPresented.toggle()
//            }
//        } else {
//            alertPresented.toggle()
//        }
        if let value = Double(stringValue), (0...255).contains(value) {
            valueSlider = value
        } else {
            alertPresented.toggle()
        }
    }
}

//struct ColorStack_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorStack()
//    }
//}
