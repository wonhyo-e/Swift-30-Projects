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
    
    @Published var title: String
    
    @Published var color: UIColor
    
    @Published var timeString = "00:00:00"
    
    var laps: [Lap] = []
    
    var state = State.stop
    
    private var stopwatch = StopwatchTimer()
    
    private var titleByState: [State: String]
    
    private var colorByState: [State: UIColor]
    
    
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
    
    func lap(timeString: String) {
        laps.insert(Lap(id: laps.count, lapString: timeString), at: 0)
        stopwatch.restart {
            self.timeString = self.stopwatch.timeString
        }
    }
    
    func reset() {
        laps.removeAll()
        timeString = "00:00:00"
        stopwatch.reset()
    }
}
