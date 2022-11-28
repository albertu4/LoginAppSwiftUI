//
//  UserRegisterTFView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct UserRegisterTFView: View {
    @Binding var userName: String
    let isDisabled: Bool
    
    var body: some View {
        HStack {
            TextField("Enter your name...", text: $userName)
                .multilineTextAlignment(.center)
            .frame(width: 150, height: 40)
            
            Text("\(userName.count)")
                .foregroundColor(isDisabled ? .green : .red)
        }
            
    }
}

struct UserRegisterTFView_Previews: PreviewProvider {
    static var previews: some View {
        UserRegisterTFView(userName: .constant("name"), isDisabled: true)
    }
}
