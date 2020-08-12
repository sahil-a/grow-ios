//
//  Timer.swift
//  grow-ios
//
//  Created by Abhishek More on 8/11/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct FocusTime: View {

    var time: String
    var body: some View {
        VStack(alignment: .center) {
            Text("\(time) focus")
                .foregroundColor(Color.green1)
                 .font(.custom("Cabin-Bold", size: 24))
            Spacer()
        }.padding(.top, 60)
    }
}

struct FocusTime_Previews: PreviewProvider {
    static var previews: some View {
        FocusTime(time: "1h")
    }
}
