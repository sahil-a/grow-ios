//
//  Timer.swift
//  grow-ios
//
//  Created by Abhishek More on 8/11/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct FocusTime: View {

    @State var isPlaying = false
    @State var timeRemaining: Int = 10
    
    var time: String
    var body: some View {
        VStack(alignment: .center) {
            Text("\(time) focus")
                .foregroundColor(Color.green1)
                 .font(.custom("Cabin-Bold", size: 24))
            Spacer()
            if (isPlaying) {
                ContentView(timeRemaining: $timeRemaining)
            }
            Spacer()
            PausePlayButton(isPlaying: $isPlaying)
        }.padding(.top, 60)
    }
}

struct FocusTime_Previews: PreviewProvider {
    static var previews: some View {
        FocusTime(time: "1h")
    }
}

struct PausePlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying = !self.isPlaying
            
        }) {
            ZStack{
                Circle()
                    .foregroundColor(Color.green1)
                    
                    .frame(width: 75, height: 75)
                if isPlaying {
                    Image(systemName: "pause")
                        .foregroundColor(.white)
                } else {
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                }
                
            }.padding(.bottom, 50)
        }
    }
}

struct ContentView: View {
    @Binding var timeRemaining: Int
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text("\(timeRemaining)")
            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                }
            }
    }
        
}


