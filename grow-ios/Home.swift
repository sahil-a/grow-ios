//
//  Home.swift
//  grow-ios
//
//  Created by Abhishek More on 8/9/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            WelcomeHeader(name: "Abhishek", streak: 5)
            Spacer()
        }.padding(.top, 50.0)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
