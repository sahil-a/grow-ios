//
//  LoginField.swift
//  grow-ios
//
//  Created by Sahil Ambardekar on 8/11/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct LoginField: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.custom("Cabin-Bold", size: 24))
            .fontWeight(.bold)
            .foregroundColor(Color.gray1)
        
    }
}

struct LoginField_Previews: PreviewProvider {
    static var previews: some View {
        LoginField(title: "who are you?")
    }
}
