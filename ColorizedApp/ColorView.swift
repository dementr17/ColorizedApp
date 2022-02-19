//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 19.02.2022.
//

import SwiftUI

struct ColorView: View {
    @Binding var colorView: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 100)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 5)
                    .foregroundColor(.white)
            )
            .padding()
            .foregroundColor(colorView)
    }
}

