//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import Foundation
import SwiftUI

struct Product: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var name: String
    
    var cellImageName: String
    
    var fullscreenImageName: String
}

extension Product {
    var cellImage: Image {
        return Image(cellImageName)
    }
    
    var fullScreenImage: Image {
        return Image(fullscreenImageName)
    }
}
