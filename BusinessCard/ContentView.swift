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
            Color(.red)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("John Wick")
                    .font(Font.custom("JohnWick", size: 40))
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
