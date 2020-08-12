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
        NavigationView {
            VStack(alignment: .leading){
                WelcomeHeader(name: "Abhishek", streak: 5)
                    .padding(.bottom, 75)
                    .padding(.leading, 30)
                FocusActivityList()
                Spacer()
                HStack {
                    Spacer()
                    Image("weow")
                        .padding(.bottom, 50)
                }
            }.padding(.top, -50.0)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
