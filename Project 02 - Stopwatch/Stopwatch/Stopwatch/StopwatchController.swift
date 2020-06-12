//
//  StartStopState.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/12.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

class StopwatchController: ObservableObject {
    
    enum State {
        case running
        case stop
        
        mutating func toggle() {
            switch self {
            case .running:
                self = .stop
            case .stop:
                self = .running
            }
        }
    }
    
    var stopwatch = StopwatchTimer()
    
    var state = State.stop
    
    var titleByState: [State: String]
    
    var colorByState: [State: UIColor]
    
    @Published var title: String
    
    @Published var color: UIColor
    
    @Published var timeString = "00:00:00"
    
    init(titleByState: [State: String], colorByState: [State: UIColor]) {
        self.titleByState = titleByState
        self.colorByState = colorByState
        self.title = titleByState[.stop] ?? ""
        self.color = colorByState[.stop] ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    func toggle() {
        state.toggle()
        
        guard let title = titleByState[state],
            let foregroundColor = colorByState[state] else {
                assertionFailure()
                return
        }
        
        self.title = title
        self.color = foregroundColor
        
        switch state {
        case .running:
            stopwatch.fire {
                self.timeString = self.stopwatch.timeString
            }
        case .stop:
            stopwatch.timer.invalidate()
        }
    }
    
    func lap() {
        stopwatch.restart {
            self.timeString = self.stopwatch.timeString
        }
    }
    
    func reset() {
        timeString = "00:00:00"
        stopwatch.reset()
    }
}
