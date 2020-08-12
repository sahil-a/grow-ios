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
    @State var placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.custom("Cabin-Bold", size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
            MaterialUITextField(placeholder: $placeholder)
                .frame(width: 200, height: 30, alignment: .leading)
                .padding(.top, 12)
        }
    }
}

struct LoginField_Previews: PreviewProvider {
    static var previews: some View {
        LoginField(title: "who are you?", placeholder: "name")
    }
}
