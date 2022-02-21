//
//  SliderViewColor.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 19.02.2022.
//

import SwiftUI

struct SliderViewColor: View {
    
    @Binding var valueSlider: Double
    @Binding var stringValue: String
    let color: Color
    //    @Binding var colorView: Color
    //    @Binding var valueSliderRed: Double
    //    @Binding var valueSliderGreen: Double
    //    @Binding var valueSliderBlue: Double
    
    var body: some View {
        Slider(value: $valueSlider, in: 0...255, step: 1) { isEditing in
            if !isEditing {
                stringValue = String(lround(valueSlider))
//                colorView = Color(
//                    red: valueSliderRed/255.0,
//                    green: valueSliderGreen/255.0,
//                    blue: valueSliderBlue/255.0
//                )
            }
        }
        .accentColor(color)
    }
}

