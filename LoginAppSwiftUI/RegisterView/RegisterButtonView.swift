//
//  RegisterButtonView.swift
//  LoginAppSwiftUI
//
//  Created by Михаил Иванов on 29.05.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(action: {})
    }
}
