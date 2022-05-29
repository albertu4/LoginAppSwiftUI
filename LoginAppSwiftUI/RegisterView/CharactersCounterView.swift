//
//  CharactersCounterView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct CharactersCounterView: View {
    private var count = 0
    
    @Binding var userName: String
    @Binding var color: Color
    
    
    init(text: Binding<String>, color: Binding<Color>) {
        self._userName = text
        count = self._userName.wrappedValue.count
        self._color = color
    }
    
    var body: some View {
        Text("\(count)")
            .foregroundColor(color)
    }
}

struct CharactersCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersCounterView(text: .constant("name"), color: .constant(.red))
    }
}
