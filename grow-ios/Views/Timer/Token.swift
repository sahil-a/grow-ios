//
//  Token.swift
//  grow-ios
//
//  Created by Abhishek More on 8/13/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct Token: View {
    var body: some View {
        HStack {
            Spacer()
            Circle()
                .frame(width: 50, height: 50)
                .padding(.trailing, 50)
        }
    }
}

struct Token_Previews: PreviewProvider {
    static var previews: some View {
        Token()
    }
}
