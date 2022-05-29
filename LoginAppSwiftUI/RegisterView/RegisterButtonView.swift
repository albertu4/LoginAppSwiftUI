//
//  RegisterButtonView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    let isDisabled: Bool
    let userName: String
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }.disabled(isDisabled)
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
            
            UserDefaults.standard.set(userName, forKey: "userName")
            UserDefaults.standard.set(user.isRegistered, forKey: "isRegistered")
        }
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(isDisabled: false, userName: "name")
    }
}
