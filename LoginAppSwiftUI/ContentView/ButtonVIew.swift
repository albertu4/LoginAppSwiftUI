//
//  ButtonVIew.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 28.11.2022.
//

import SwiftUI

struct ButtonView: View {
    let color: Color
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
        }
        .bordered(color: color)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(color: .green, title: "button", action: {})
    }
}
