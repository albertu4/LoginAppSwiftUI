//
//  ButtonModifier.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 28.11.2022.
//

import SwiftUI

struct FrameForButton: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 4)
            )
    }
}

extension Button {
    func bordered(color: Color) -> some View {
        ModifiedContent(content: self, modifier: FrameForButton(color: color))
    }
}
