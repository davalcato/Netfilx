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
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 20){
            
            HStack{
                
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
        }
    }
}
