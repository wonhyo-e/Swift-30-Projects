//
//  LapRow.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/13.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct LapRow: View {
    var index: Int
    var timeString: String
    
    var body: some View {
        HStack {
            Text("Lap \(index + 1)")
            Spacer()
            Text(timeString)
        }.padding([.leading, .trailing], 10)
    }
}


struct LapRow_Previews: PreviewProvider {
    static var testData = ["00:00:00",
                           "12:34:56"]
    
    static var previews: some View {
        Group {
            LapRow(index: 0, timeString: LapRow_Previews.testData[0])
            LapRow(index: 1, timeString: LapRow_Previews.testData[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}

struct Lap: Hashable, Codable, Identifiable {
    var id: Int
    
    var lapString: String
}
