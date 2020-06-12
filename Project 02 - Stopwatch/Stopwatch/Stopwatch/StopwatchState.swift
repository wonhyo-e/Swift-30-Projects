//
//  StartStopState.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/12.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

class StopwatchState: ObservableObject {
    var stopwatch = StopwatchTimer()
    
    var isRunning = false
    
    @Published var title = "Start"
    
    @Published var foregroundColor = #colorLiteral(red: 0.3324309289, green: 0.9990163445, blue: 0, alpha: 1)
    
    @Published var time = "00:00:00"
    
    func toggle() {
        isRunning.toggle()
        title = isRunning ? "Stop" : "Start"
        foregroundColor = isRunning ? #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1) : #colorLiteral(red: 0.3324309289, green: 0.9990163445, blue: 0, alpha: 1)
        
        if isRunning {
            stopwatch.fire {
                self.time = self.stopwatch.time
            }
        } else {
            stopwatch.timer.invalidate()
        }
    }
}
