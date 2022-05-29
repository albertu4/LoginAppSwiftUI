//
//  UserRegisterTFView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct UserRegisterTFView: View {
    @Binding var userName: String
    @Binding var color: Color
    @Binding var isDisabled: Bool
    
    var body: some View {
        TextField("Enter your name...", text: $userName)
            .multilineTextAlignment(.center)
            .frame(width: 150, height: 40)
            .onChange(of: userName) { newValue in
                changeViewOfRegisterMenu()
            }
    }
    
    private func changeViewOfRegisterMenu() {
        if userName.count >= 3 {
            color = .blue
            isDisabled = false
        } else {
            color = .red
            isDisabled = true
        }
    }
}

struct UserRegisterTFView_Previews: PreviewProvider {
    static var previews: some View {
        UserRegisterTFView(userName: .constant("name"), color: .constant(.blue), isDisabled: .constant(false))
    }
}
