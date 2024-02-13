//
//  LoginView.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 11.02.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            ZStack{
                // BG Color
                Color("MainColor")
                    .ignoresSafeArea()
                //Login page image
                Image("login-page-bg")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -200)
                
                
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
                    
                    NavigationLink(destination: EmailPage(), label: {
                        Text("Sign up free")
                            .frame(width: 290, height: 18)
                            .foregroundStyle(Color.black)
                            .bold()
                            .padding()
                            .background(Color("SecondColor"))
                            .clipShape(Capsule())
                    })
                    //sign up with google
                    LoginButtons(buttonText: "Continue with phone number", buttonColor: "MainColor", buttonTextColor: "WhiteText",buttonBorder: true, action:{print("button pressed")})
                    //sign up with Facebook
                    LoginButtons(buttonText: "Continue with Google", buttonColor: "MainColor", buttonTextColor: "WhiteText",buttonBorder: true, action:{print("button pressed")})
                    //Log in Button
                    Button{
                        print("Button Pressed")
                    } label: {
                        Text("Log In")
                            .foregroundStyle(Color(.white))
                            .font(.system(size: 20))
                            .bold()
                        
                    }
                }
            }
        }
    }
}



#Preview {
    LoginView()
}
