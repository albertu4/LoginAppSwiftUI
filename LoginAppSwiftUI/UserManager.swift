//
//  UserManager.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import Combine
import Foundation

final class UserManager: ObservableObject {
    @Published var isRegistered = UserDefaults.standard.bool(forKey: "isRegistered")
    var name = UserDefaults.standard.string(forKey: "userName") ?? ""
}
