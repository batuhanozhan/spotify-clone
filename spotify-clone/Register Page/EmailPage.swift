//
//  RegisterPage.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 12.02.2024.
//

import SwiftUI


struct EmailPage: View {
    var body: some View {
        
        ZStack{
            Color("MainColor")
                .ignoresSafeArea()
            VStack{
                Text("What's your email?")
                    .font(.system(size: 24))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                RegisterTextField()
                    .offset(y: -34)
                Text("You'll need to confirm this email later.")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 12))
                    .padding()
                    .offset(y: -70)
                NavigationLink(destination: PasswordPage(), label: {
                    Text("Next")
                        .frame(width: 82, height: 18)
                        .foregroundStyle(Color.black)
                        .bold()
                        .padding()
                        .background(Color.gray)
                        .clipShape(Capsule())
                })
                .accentColor(.white)
            }
            .offset(y: -245)
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct PasswordPage: View {
    var body: some View {
        ZStack{
            Color("MainColor")
                .ignoresSafeArea()
            VStack{
                Text("Create a password")
                    .font(.system(size: 24))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                SecureTextField()
                    .offset(y: -30)
                Text("Use atleast 8 characters.")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 12))
                    .padding()
                    .offset(y: -65)
                
                NavigationLink(destination: GenderPage(), label: {
                    Text("Next")
                        .frame(width: 82, height: 18)
                        .foregroundStyle(Color.black)
                        .bold()
                        .padding()
                        .background(Color.gray)
                        .clipShape(Capsule())
                })
            }
            .offset(y: -250)
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct GenderPage: View {
    var body: some View {
        ZStack{
            
            Color("MainColor")
                .ignoresSafeArea()
            VStack{
                Text("What's your gender?")
                    .font(.system(size: 24))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                GenderPicker()
                    .offset(y: -30)
                Text("You'll need to confirm this email later.")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 12))
                    .padding()
                    .offset(y: -65)
                
                NavigationLink(destination: NamePage(), label: {
                    Text("Next")
                        .frame(width: 82, height: 18)
                        .foregroundStyle(Color.black)
                        .bold()
                        .padding()
                        .background(Color.gray)
                        .clipShape(Capsule())
                })
            }
            .offset(y: -250)
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct NamePage: View {
    var body: some View {
        ZStack{
            Color("MainColor")
                .ignoresSafeArea()
            VStack{
                Text("What's your name?")
                    .font(.system(size: 24))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                RegisterTextField()
                    .offset(y: -30)
                Text("This appears on your spotify profile")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 12))
                    .padding()
                    .offset(y: -65)
                Divider().background(Color.white)
                    .padding()
                    .offset(y: -75)
                
                //text1
                Text("By tapping on \"Create account\", you agree to the spotify Term of Us.")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 11))
                    .padding()
                    .offset(y: -90)
                
                //Text button
                Button("Term of Use") {
                    print("Button tapped!")
                }
                .foregroundColor(Color("SecondColor"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 11))
                .padding()
                .offset(y: -110)
                
                //text2
                Text("To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 11))
                    .padding()
                    .offset(y: -130)
                
                //text button
                Button("Privacy Policy") {
                    print("Button tapped!")
                }
                .foregroundColor(Color("SecondColor"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 11))
                .padding()
                .offset(y: -150)
                // radio buttons
                
                RadioButton()
                    .offset(y: -150)
                
                
                NavigationLink(destination: Text("Destonation"), label: {
                    Text("Next")
                        .frame(width: 82, height: 18)
                        .foregroundStyle(Color.black)
                        .bold()
                        .padding()
                        .background(Color.gray)
                        .clipShape(Capsule())
                    
                })
            }
            .offset(y: -45)
        }
        .ignoresSafeArea(.keyboard)
    }
}



struct RegisterTextField: View {
    var body: some View{
        VStack{
            TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.gray)
                .cornerRadius(8)
                .padding()
        }
    }
}



struct SecureTextField: View {
    var body: some View{
        VStack{
            SecureField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.gray)
                .cornerRadius(8)
                .padding()
        }
    }
}



struct GenderPicker: View{
    var genders = ["Man", "Women"]
    @State private var selectedGender = ""
    var body: some View{
        Picker("Please choose a gender", selection: $selectedGender) {
            ForEach(genders, id: \.self) {
                Text($0)
            }
        }
        .frame(width: 375, height: 52)
        .background(Color.gray)
        .foregroundColor(.black)
        .cornerRadius(8)
        .padding(20)
    }
}





#Preview {
    GenderPage()
}
