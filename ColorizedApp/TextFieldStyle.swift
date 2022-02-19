//
//  TextFieldStyle.swift
//  ColorizedApp
//
//  Created by Дмитрий Чепанов on 19.02.2022.
//

import SwiftUI

struct BorderViewModifier: ViewModifier {
    let color: Color
    
        func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 2, leading: 4, bottom: 2, trailing: 4))
            .frame(width: 42, alignment: .trailing)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 2)
                    .foregroundColor(color)
            )
            .shadow(color: Color.gray, radius: 3, x: 1, y: 2)
            .multilineTextAlignment(.trailing)
            .keyboardType(.numbersAndPunctuation)
            .font(.headline)
    }
}

extension TextField {
    func bordered() -> some View {
        ModifiedContent(
            content: self,
            modifier: BorderViewModifier(color: .gray)
        )
    }
}
