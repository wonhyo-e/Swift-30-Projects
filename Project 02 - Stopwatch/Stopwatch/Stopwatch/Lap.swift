//
//  Lap.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/13.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import Foundation

struct Lap: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var lapString: String
}
