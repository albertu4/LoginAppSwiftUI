//
//  StarterView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        Group {
            if userManager.user.isRegistered {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
