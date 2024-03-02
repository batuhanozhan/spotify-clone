//
//  MainPage.swift
//  spotify-clone
//
//  Created by Batuhan Özhan on 21.02.2024.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        ZStack{
            Color("MainColor")
                .ignoresSafeArea()
            VStack {
                HStack(spacing: 0){
                    //header text
                    Text("Recently played")
                        .foregroundStyle(Color.white)
                        .bold()
                        .padding()
                    Spacer()
                    
                    //Icons
                    Image(systemName: "bell")
                        .frame(width: 45, height: 52)
                        .foregroundColor(.white)
                        
                    Image(systemName: "clock.arrow.circlepath")
                        .frame(width: 45, height: 52)
                        .foregroundColor(.white)
                       
                    Image(systemName: "gearshape")
                        .frame(width: 45, height: 52)
                        .foregroundColor(.white)
                        
                }
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        //Recently played artists images
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<1) { index in
                                    VStack {
                                        Image("editors-picks1")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                        
                                        
                                        Text("(Remastered)")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                    
                                    VStack {
                                        Image("editors-picks2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                        
                                        
                                        Text("Marvin Gaye")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                    
                                    VStack {
                                        Image("editors-picks3")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                        
                                        
                                        Text("Today's top")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                    
                                    VStack {
                                        Image("playlist11")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                        
                                        
                                        Text("Mat Kearney")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                }
                            }
                            
                        }
                        
                        //playlists
                        
                        HStack(){
                            Image("playlist1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .cornerRadius(2)
                            
                            VStack(alignment: .leading) {
                                Text("#SPOTIFYWRAPPED")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 10))
                                
                                Text("Your 2021 in review")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24).bold())
                            }
                        }
                        .padding()
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<1) { index in
                                    VStack {
                                        Image("playlist7")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 130, height: 130)
                                        
                                        
                                        Text("Type of Chill")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                    
                                    VStack {
                                        Image("playlist8")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 130, height: 130)
                                        
                                        
                                        Text("Bicycle")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                    
                                    VStack {
                                        Image("playlist9")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 130, height: 130)
                                        
                                        
                                        Text("Folk Covers")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                    
                                    VStack {
                                        Image("playlist10")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 130, height: 130)
                                        
                                        
                                        Text("Mr. A-Z")
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .font(.system(size: 14))
                                    }
                                }
                            }
                        }
                        
                        //editor's picks
                        VStack(alignment: .leading) {
                            Text("Editor's pick")
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size: 26))
                                .padding()
                            
                            HStack{
                                ScrollView(.horizontal) {
                                    HStack {
                                        ForEach(0..<1) { index in
                                            VStack {
                                                Image("playlist1")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 140, height: 140)
                                                
                                                
                                                Text("Old School Love")
                                                    .foregroundColor(.white)
                                                    .padding(.top, 5)
                                                    .font(.system(size: 14))
                                            }
                                            
                                            VStack {
                                                Image("playlist2")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 140, height: 140)
                                                
                                                
                                                Text("Late Night Drive")
                                                    .foregroundColor(.white)
                                                    .padding(.top, 5)
                                                    .font(.system(size: 14))
                                            }
                                            
                                            VStack {
                                                Image("playlist3")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 140, height: 140)
                                                
                                                
                                                Text("Ayos Lang")
                                                    .foregroundColor(.white)
                                                    .padding(.top, 5)
                                                    .font(.system(size: 14))
                                            }
                                            
                                            VStack {
                                                Image("playlist4")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 140, height: 140)
                                                
                                                
                                                Text("Good Cry")
                                                    .foregroundColor(.white)
                                                    .padding(.top, 5)
                                                    .font(.system(size: 14))
                                            }
                                        }
                                    }
                                }
                            }
                            .navigationBarBackButtonHidden(true)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainPage()
}
