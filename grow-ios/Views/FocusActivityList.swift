 //
//  FocusActivityList.swift
//  grow-ios
//
//  Created by Abhishek More on 8/9/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI
 
 let activities = [
    ActivityData(timeString: "1h", seconds: 3600),
    ActivityData(timeString: "2h", seconds: 7200),
    ActivityData(timeString: "5m", seconds: 5),

 
 ]

struct FocusActivityList: View {
    var body: some View {
    
        VStack(alignment: .leading) {
            Text("focus activities")
                .font(.custom("Cabin-Bold", size: 24))
                .padding(.leading, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(activities, id: \.self) { activity in
                        NavigationLink(destination: FocusTime(startTimeSeconds: activity.seconds, time: activity.timeString)) {
                            FocusActivity(color: Color.green3, text: "\(activity.timeString)")
                                
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
