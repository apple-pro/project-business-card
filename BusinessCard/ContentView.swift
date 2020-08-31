//
//  ContentView.swift
//  BusinessCard
//
//  Created by StartupBuilder.INFO on 8/31/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.91, green: 0.25, blue: 0.09)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("john wick")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                
                Text("John Wick")
                    .font(Font.custom("JohnWick", size: 70))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Hitman")
                    .bold()
                    .foregroundColor(.white)
                
                Divider()
                
                InfoView(image: "phone.fill", text: "(+99) 123 456 999")
                InfoView(image: "envelope.fill", text: "john.wick@who2kill.com")
                InfoView(image: "message.fill", text: "john.wick")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let image: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: image)
                    .foregroundColor(Color(red: 0.76, green: 0.21, blue: 0.09))
                
                Text(text)
            })
            .padding(.leading)
            .padding(.trailing)
    }
}
