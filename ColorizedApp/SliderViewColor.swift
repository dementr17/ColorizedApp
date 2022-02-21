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

    var body: some View {
        Slider(value: $valueSlider, in: 0...255, step: 1) { isEditing in
            if !isEditing {
                stringValue = String(lround(valueSlider))
            }
        }
        .accentColor(color)
    }
}

