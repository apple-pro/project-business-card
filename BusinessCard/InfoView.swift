//
//  InfoView.swift
//  BusinessCard
//
//  Created by StartupBuilder.INFO on 8/31/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

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

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: "phone.fill", text: "(+99) 123 456 999")
            .previewLayout(.sizeThatFits)
    }
}
