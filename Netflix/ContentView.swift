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
                
                VStack(alignment: .leading, spacing: 15) {
                    
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
                    
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("View All")
                        }.foregroundColor(Color("Color1"))
                    }
                    
                    Text("Continue Watching")
                    
                    bottomView()
                    
                }
                
            }
            
        }.padding()
        .preferredColorScheme(.dark)
    }
}

struct bottomView : View {
    
    var body : some View{
        
        VStack(spacing: 15){
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 15){
                    
                    ForEach(datas){i in
                        
                        VStack(spacing: 0){
                            
                            Image(i.image)
                            
                            HStack{
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                    
                                }) {
                                    
                                    Image("play").renderingMode(.original).resizable().frame(width: 25, height: 25)
                                    
                                }.padding(.top, -12)
                            }
                        }
                    }
                }
            }
        }
    }
}

// Here is where the sample data goes

struct type : Identifiable {
    
    var id : Int
    var name : String
    var epname : String
    var image : String
    var percentage : CGFloat
}

var datas = [
    type(id: 0, name: "Ghoul", epname: "Ep - S1",image: "m1",percentage : 45),
    type(id: 1, name: "13 Reasons Why", epname: "Ep - S2",image: "m2",percentage: 90)
]

var bottom = ["b1","b2"]

struct episodetype : Identifiable {
    
    var id : Int
    var name : String
    var time : String
    var image : String
    var desc : String
}

var episodes = [episodetype(id: 0, name: "The 'H' Word", time: "51 min", image: "d1", desc: "Matt Murdock, Jessica Jones, Luke Cage and Danny Rand investigate criminals and fight injustice, unaware their paths are about to cross."),
episodetype(id: 1, name: "Mean RIght Hook", time: "44 min", image: "d2", desc: "As a new conspiracy takes shape, Matt finds old habits are hard to break, Jessica gets in over her head, Luke tracks a lead, and Danny meets his match.")]
