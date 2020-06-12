//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/12.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import Foundation

class StopwatchTimer {
    static let increment = 0.03
    
    var timer = Timer()
    
    var counter = 0.0
    
    var time: String {
        let minutes = Int(counter / 60)
        let minutesString = String(format: "%02d", minutes)
        
        let seconds = counter.truncatingRemainder(dividingBy: 60)
        let secondsString = String(format: "%05.2f", seconds)
        
        return "\(minutesString):\(secondsString)"
    }
    
    func fire(handler: @escaping (() -> Void)) {
        timer = Timer.scheduledTimer(withTimeInterval: StopwatchTimer.increment, repeats: true, block: { _ in
            self.counter = self.counter + StopwatchTimer.increment
            handler()
        })
        
        // allows timer to fire even when the UI is being used.
        RunLoop.current.add(timer, forMode: .common)
    }
}
