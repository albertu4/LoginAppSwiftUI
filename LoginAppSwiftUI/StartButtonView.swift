//
//  StartButtonView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 24.05.2022.
//

import SwiftUI

struct StartButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button {
            timer.startTimer()
        } label: {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 4)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: TimeCounter())
    }
}
