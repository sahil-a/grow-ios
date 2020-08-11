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
        HStack {
            VStack {
                LoginHeader()
                Spacer()
            }.padding(.top, 40.0)
            Spacer()
        }.padding(.leading, 20.0)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
