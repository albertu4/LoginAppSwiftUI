//
//  CharactersCounterView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct CharactersCounterView: View {
    
    let userName: String
    let color: Color
    
    private var count = 0
    
    init(userName: String, color: Color) {
        self.userName = userName
        count = self.userName.count
        self.color = color
    }
}

extension CharactersCounterView {
    var body: some View {
        Text("\(count)")
            .foregroundColor(color)
    }
}

struct CharactersCounterView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersCounterView(userName: "name", color: .red)
    }
}
