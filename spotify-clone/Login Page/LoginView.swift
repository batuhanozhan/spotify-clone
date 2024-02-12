//
//  LoginView.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 11.02.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            // BG Color
            Color("MainColor")
                .ignoresSafeArea()
            //Login page color
            Image("login-page-bg")
                .resizable()
                .scaledToFit()
                .position(x: 214,y: 200)
            

            VStack(spacing: 20){
                //Spotify Logo
                Image("spotify-brand-logo")
                    .resizable()
                    .frame(width: 70, height: 70)
                //Login page text
                Text("Millions of songs.\n  Free on Spotify.")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .bold()
                
                
                
                //Sign Up Free button
                LoginButtons(buttonText: "Sign Up Free", buttonColor: "SecondColor", buttonTextColor: "MainColor",buttonBorder: false, action:{print("button pressed")})
                //sign up with google
                LoginButtons(buttonText: "Continue with phone number", buttonColor: "MainColor", buttonTextColor: "WhiteText",buttonBorder: true, action:{print("button pressed")})
                //sign up with Facebook
                LoginButtons(buttonText: "Continue with Facebook", buttonColor: "MainColor", buttonTextColor: "WhiteText",buttonBorder: true, action:{print("button pressed")})
                //sign up with Apple
                Button{
                    print("Button Pressed")
                    } label: {
                    Text("Log in")
                            .foregroundStyle(Color(.white))
                            .font(.system(size: 20))
                            .bold()
                            
                }
            }
        }
    }
}











#Preview {
    LoginView()
}
