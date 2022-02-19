//
//  SliderView.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 18.02.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var valueSlider: Double
    
    var body: some View {
        Slider(value: $valueSlider, in: 0...255, step: 1)
    }
}
