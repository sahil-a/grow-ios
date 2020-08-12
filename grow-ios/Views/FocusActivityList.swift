 //
//  FocusActivityList.swift
//  grow-ios
//
//  Created by Abhishek More on 8/9/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI
 
let nums = [1,2,3,4]

struct FocusActivityList: View {
    var body: some View {
    
        VStack(alignment: .leading) {
            Text("focus activities")
                .font(.custom("Cabin-Bold", size: 24))
                .padding(.leading, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(nums, id: \.self) { num in
                        NavigationLink(destination: FocusTime(time: "1h")) {
                            FocusActivity(color: Color.green3, text: "\(num)")
                                
                        }
                    }
                    // TODO: insert custom FocusActivity
                }
                .padding(.leading, 30)
                .frame(height: 200)
            }
        }
    }
}

struct FocusActivityList_Previews: PreviewProvider {
    static var previews: some View {
        FocusActivityList()
    }
}
