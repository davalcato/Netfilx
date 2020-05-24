//
//  ContentView.swift
//  Netflix
//
//  Created by Daval Cato on 5/24/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            Home()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var txt = ""
    var body : some View{
        
        VStack(alignment: .leading, spacing: 20){
            
            HStack(spacing: 10){
                
                Button(action: {
                    
                }) {
                    
                    Image("menu").renderingMode(.original)
                }
                
                Image("logo")
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("Notifications").renderingMode(.original)
                }
            }
            
            HStack(spacing: 15){
                
                Image(systemName: "magnifyingglass").font(.body)
                
                TextField("Search For Movies,Shows", text: $txt)
                
            }.padding()
            .background(Color("Color"))
            
            ScrollView(.vertical, showsIndicators: false) {
                
                Text("Netflix Prime").font(.title)
                
                ZStack{
                    
                    Image("top").resizable()
                    
                    VStack{
                        
                        Spacer()
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 10){
                                
                                Text("Marvel's The Defenders").font(.body)
                                Text("Season 1").font(.caption)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("play").renderingMode(.original)
                                
                            }
                        }
                    }.padding()
                    
                }.frame(height: 190)
                
            }
            
        }.padding()
        .preferredColorScheme(.dark)
    }
}
