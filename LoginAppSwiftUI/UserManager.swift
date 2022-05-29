//
//  UserManager.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
