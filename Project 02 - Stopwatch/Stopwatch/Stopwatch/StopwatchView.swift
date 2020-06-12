//
//  ContentView.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/11.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct StopwatchView: View {
    
    @ObservedObject
    var mainTimerController = StopwatchController(titleByState: [.running: "Stop", .stop: "Start"],
                                                  colorByState: [.running: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), .stop: #colorLiteral(red: 0.3324309289, green: 0.9990163445, blue: 0, alpha: 1)])
    
    @ObservedObject
    var lapTimerController = StopwatchController(titleByState: [.running: "Lap", .stop: "Reset"],
                                                 colorByState: [.running: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), .stop: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)])
    
    var lapTimerLabel: Text {
        Text(lapTimerController.timeString).font(Font.system(size: 17))
    }
    
    var mainTimerLabel: Text {
        Text(mainTimerController.timeString).font(Font.system(size: 40))
    }
    
    var lapResetButton: some View {
        Button(action: {
            switch self.lapTimerController.state {
            case .running:
                self.lapTimerController.lap(timeString: self.mainTimerController.timeString)
            case .stop:
                self.mainTimerController.reset()
                self.lapTimerController.reset()
            }
        }) {
            Text(lapTimerController.title).foregroundColor(Color(lapTimerController.color))
        }
    }
    
    var startStopButton: some View {
        Button(action: {
            self.mainTimerController.toggle()
            self.lapTimerController.toggle()
        }) {
            Text(mainTimerController.title).foregroundColor(Color(mainTimerController.color))
        }
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    VStack(alignment: .trailing, spacing: nil) {
                        self.lapTimerLabel
                        self.mainTimerLabel
                    }.frame(width: geometry.size.width, height: 156, alignment: .center)
                    
                    HStack(alignment: .center, spacing: 90) {
                        self.lapResetButton
                        self.startStopButton
                    }.frame(width: geometry.size.width, height: 140, alignment: .center)
                        .background(Color(UIColor.secondarySystemBackground))
                    
                    List(self.lapTimerController.laps) { lap in
                        LapRow(index: lap.id, timeString: lap.lapString)
                    }.frame(minWidth: nil, idealWidth: nil, maxWidth: geometry.size.width,
                            minHeight: nil, idealHeight: nil, maxHeight: .infinity,
                            alignment: .center)
                }
            }.navigationBarTitle("Stopwatch", displayMode: .inline)
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
