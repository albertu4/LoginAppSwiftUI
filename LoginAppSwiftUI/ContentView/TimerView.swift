//
//  ContentView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hello, \(userManager.user.name)!")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            ButtonView(color: .red, title: timer.buttonTitle) {
                timer.startTimer()
            }
            
            Spacer()
            ButtonView(color: .blue, title: "Log out") {
                DataManager.shared.clear(userManager: userManager)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}
