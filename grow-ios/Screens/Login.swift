//
//  Login.swift
//  grow-ios
//
//  Created by Sahil Ambardekar on 8/10/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack(alignment: .leading) {
            LoginHeader()
            LoginField(title: "who are you?", placeholder: "name").padding(.top, 50)
            LoginField(title: "what is your plant's code?", placeholder: "plant code").padding(.top, 20)
            Spacer()
        }.padding(.top, 40.0)
            .padding(.leading, -20.0)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
