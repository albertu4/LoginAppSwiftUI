//
//  LoginAppSwiftUIApp.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import SwiftUI

@main
struct LoginAppSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
