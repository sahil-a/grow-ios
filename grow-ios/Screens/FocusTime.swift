//
//  Timer.swift
//  grow-ios
//
//  Created by Abhishek More on 8/11/20.
//  Copyright © 2020 hackthis. All rights reserved.
//

import SwiftUI

struct FocusTime: View {

    @ObservedObject var timerManager = TimerManager()
    
    let startTimeSeconds: Int
    let time: String
    var body: some View {
        VStack(alignment: .center) {
            Text("\(time) focus")
                .foregroundColor(Color.green1)
                .font(.custom("Cabin-Bold", size: 24))
            Spacer()
            Text("\(getFormattedTime(seconds: timerManager.secondsLeft))")
                .font(.custom("Cabin-Bold", size: 30))
                .foregroundColor(Color.green3)
                .onAppear() {
                    self.timerManager.setTimerLength(seconds: self.startTimeSeconds )
                }
            Spacer()
            Image(systemName: timerManager.timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                .resizable()
                .foregroundColor(Color.green1)
                .frame(width: 75, height: 75)
                .padding(.bottom, 50)
                .onTapGesture(perform: {
                if self.timerManager.timerMode == .initial {
                    self.timerManager.setTimerLength(seconds: self.startTimeSeconds )                }
                self.timerManager.timerMode == .running ? self.timerManager.pause() : self.timerManager.start()
                
                })
                
        }.padding(.top, 60)
    }
}

struct FocusTime_Previews: PreviewProvider {
    static var previews: some View {
        FocusTime(startTimeSeconds: 3660, time: "1h")
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

enum TimerMode {
    case running
    case paused
    case initial
}


