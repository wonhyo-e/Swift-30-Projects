//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import Foundation
import SwiftUI

var productData = [
    Product(id: 0, name: "1907 Wall Set", cellImageName: "image-cell1", fullscreenImageName: "phone-fullscreen1"),
    Product(id: 1, name: "1921 Dial Phone", cellImageName: "image-cell2", fullscreenImageName: "phone-fullscreen2"),
    Product(id: 2, name: "1937 Desk Set", cellImageName: "image-cell3", fullscreenImageName: "phone-fullscreen3"),
    Product(id: 3, name: "1984 Moto Portable", cellImageName: "image-cell4", fullscreenImageName: "phone-fullscreen4")
]

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
}
