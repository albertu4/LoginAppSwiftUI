//
//  RegisterView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @State private var color = Color.red
    @State private var isDisabled = true
    
    var body: some View {
        VStack {
            
            HStack {
                UserRegisterTFView(userName: $userName, color: $color, isDisabled: $isDisabled)
                
                CharactersCounterView(text: $userName, color: $color)
            }
            
            RegisterButtonView(isDisabled: isDisabled, userName: userName)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
