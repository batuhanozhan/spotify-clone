//
//  Buttons.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 11.02.2024.
//

import SwiftUI
//Green Button
struct LoginButtons: View {
    
    var buttonText: String
    var buttonColor: String
    var buttonTextColor: String
    var buttonBorder: Bool
    var action: Optional<() -> Void>
    
    //Login Page button style
    
    var body: some View{
        Button(action: action ?? {} , label: {
            Text(buttonText)
                .frame(width: 290, height: 18)
                .foregroundStyle(Color(buttonTextColor))
                .bold()
                .padding()
                .background(Color(buttonColor))
                .clipShape(Capsule())
                .overlay(RoundedRectangle(cornerRadius: 25)
                .stroke(buttonBorder ? Color.white : Color.clear, lineWidth: 1))
        })
    }
}


#Preview {
    LoginButtons(buttonText: "sign in", buttonColor: "SecondColor", buttonTextColor: "MainColor", buttonBorder: true, action: nil)
    
}
