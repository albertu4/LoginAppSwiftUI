//
//  LoginAppSwiftUIApp.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import SwiftUI

@main
struct LoginAppSwiftUIApp: App {
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager.init(user: user))
        }
    }
}
