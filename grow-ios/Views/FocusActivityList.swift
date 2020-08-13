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
    ActivityData(timeString: "5s", seconds: 5),

 
 ]

struct FocusActivityList: View {
    
    @State private var showModal: Bool = false
    @State var active: ActivityData = ActivityData(timeString: "1h", seconds: 3600)
    var body: some View {
    
        VStack(alignment: .leading) {
            Text("focus activities")
                .font(.custom("Cabin-Bold", size: 24))
                .padding(.leading, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(activities, id: \.self) { activity in
                        
                        FocusActivity(color: Color.green3, text: "\(activity.timeString)")
                            .onTapGesture {
                                self.active = activity
                                self.showModal.toggle()
                        }
                        
                    }
                    // TODO: insert custom FocusActivity
                }
                .sheet(isPresented: $showModal) {
                    FocusTime(startTimeSeconds: self.active.seconds, time: self.active.timeString)
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
