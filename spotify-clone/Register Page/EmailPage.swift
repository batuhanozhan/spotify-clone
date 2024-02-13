//
//  RegisterPage.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 12.02.2024.
//

import SwiftUI

struct EmailPage: View {
    var body: some View {
        NavigationView{
            VStack{
                CircularNumberView(color: .red, number: 1)
                    .navigationTitle("Email")
                
                NavigationLink(destination: PasswordPage(), label: {
                    Text("next screen")
                })
            }
        }
    }
}

struct PasswordPage: View {
    var body: some View {
        VStack{
            CircularNumberView(color: .red, number: 1)
                .navigationTitle("Pasword")
            
            NavigationLink(destination: GenderPage(), label: {
                Text("next screen")
            })
        }
    }
}

struct GenderPage: View {
    var body: some View {
        VStack{
            CircularNumberView(color: .red, number: 1)
                .navigationTitle("Gender")
            
            NavigationLink(destination: Text("Destonation"), label: {
                Text("next screen")
            })
        }
    }
}

struct NamePage: View {
    var body: some View {
        VStack{
            CircularNumberView(color: .red, number: 1)
                .navigationTitle("Name")
            
            NavigationLink(destination: Text("Destonation"), label: {
                Text("next screen")
            })
        }
    }
}












struct CircularNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View{
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}


#Preview {
    EmailPage()
}
