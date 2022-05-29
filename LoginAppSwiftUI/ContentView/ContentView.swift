//
//  ContentView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hello, \(userManager.name)!")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            StartButtonView(timer: timer)
            Spacer()
            LogOutButtonView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
