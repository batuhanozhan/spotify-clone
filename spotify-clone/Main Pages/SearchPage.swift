//
//  SeacrhPage.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 1.03.2024.
//

import SwiftUI

struct SearchPage: View {
    var body: some View {
        ZStack{
            Color("MainColor")
                .ignoresSafeArea()
            VStack {
                HStack(spacing: 0){
                    //header text
                    Text("Search")
                        .foregroundStyle(Color.white)
                        .bold()
                        .padding()
                    Spacer()
                    
                    //Icons
                    Image(systemName: "camera")
                        .frame(width: 55, height: 55)
                        .foregroundColor(.white)
                    
                }
                //All Categories
                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        
                        //Search bar
                        VStack{
                            
                            
                            TextField("Artist, songs or podcasts", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding()
                                .background(Color(.systemGray5))
                                .cornerRadius(8)
                            
                        }
                        
                        .padding()
                    }
                    //Your top genres
                    VStack (alignment: .leading){
                        Text("Your top genres")
                            .foregroundStyle(Color.white)
                            .bold()
                            .padding()
                        HStack{
                            Image("genre1")
                                .resizable()
                                .scaledToFit()
                            Image("genre2")
                                .resizable()
                                .scaledToFit()
                        }
                        .offset(y: -30)
                        .padding()
                    }
                    
                    //Popular podcast category
                    VStack (alignment: .leading){
                        Text("Popular podcast category")
                            .foregroundStyle(Color.white)
                            .bold()
                            .padding()
                        HStack{
                            Image("podcast1")
                                .resizable()
                                .scaledToFit()
                            Image("podcast2")
                                .resizable()
                                .scaledToFit()
                        }
                        .offset(y: -30)
                        .padding()
                    }
                    .offset(y: -50)
                    //Browse all
                    VStack (alignment: .leading){
                        Text("Browse all")
                            .foregroundStyle(Color.white)
                            .bold()
                            .padding()
                        VStack {
                            HStack{
                                Image("browse1")
                                    .resizable()
                                    .scaledToFit()
                                Image("browse2")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .padding()
                            HStack{
                                Image("browse3")
                                    .resizable()
                                    .scaledToFit()
                                Image("browse4")
                                    .resizable()
                                    .scaledToFit()
                            }
                            
                            .offset(y: -30)
                            .padding()
                        }
                        .offset(y: -30)
                    }
                    .offset(y: -100)
                }
                
                
                
                
            }
        }
    }
}

#Preview {
    SearchPage()
}
