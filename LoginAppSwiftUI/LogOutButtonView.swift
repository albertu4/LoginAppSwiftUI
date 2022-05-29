//
//  LogOutButtonView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct LogOutButtonView: View {
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Button  {
            user.name = ""
            UserDefaults.standard.removeObject(forKey: "userName")
            user.isRegistered.toggle()
            UserDefaults.standard.removeObject(forKey: "isRegistered")
        } label: {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 4)
        )

    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
