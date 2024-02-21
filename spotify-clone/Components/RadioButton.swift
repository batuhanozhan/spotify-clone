//
//  RadioButton.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 16.02.2024.
//

import SwiftUI

struct RadioButton: View {
    @State private var selectedOptions: [Bool] = [false, false]
    var body: some View {
        RadioButtonView(text: "Please send me news and offers from Spotify.", isSelected:
            selectedOptions[0]) {
            self.selectedOptions[0].toggle()
        }
        RadioButtonView(text: "Share my registration data with Spotify’s content providers for marketing purposes.", isSelected: selectedOptions[1]) {
            self.selectedOptions[1].toggle()
        }
        
    }
}

struct RadioButtonView: View {
    var text: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(text)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 11))
                
                Spacer()
                Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .background(Color("MainColor"))
                
            }
            .padding()
        }
        .foregroundColor(isSelected ? .green : .gray)
    }
}

#Preview {
    RadioButton()
}
