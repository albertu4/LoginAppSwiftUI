//
//  DataManager.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 28.11.2022.
//

import SwiftUI

class DataManager {
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loadUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
    }
}
