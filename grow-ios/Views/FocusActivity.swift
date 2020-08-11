//
//  FocusActivity.swift
//  grow-ios
//
//  Created by Abhishek More on 8/9/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct FocusActivity: View {
    let color: Color
    let text: String
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 100, height: 135)
                .foregroundColor(color)
                .shadow(color: color.opacity(0.35), radius: 15, x: 0, y: 33)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white.opacity(0.4))
                Text(text)
                    .foregroundColor(.white)
                    .font(.custom("Cabin-Bold", size: 24))
            }.padding([.top, .leading], 10)
        }
    }
}

struct FocusActivity_Previews: PreviewProvider {
    static var previews: some View {
        FocusActivity(color: Color(red: 115/255, green: 129/255, blue: 251/255), text: "1h")
        
    }
}
