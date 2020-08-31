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
            Color(red: 0.15, green: 0.24, blue: 0.46)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("john wick")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .clipShape(Circle())
                
                Text("John Wick")
                    .font(Font.custom("JohnWick", size: 70))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Hitman")
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
