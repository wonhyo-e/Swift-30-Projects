//
//  Menu.swift
//  FacebookMe
//
//  Created by Woonohyo on 2020/06/14.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import Foundation
import SwiftUI

class Menu: Identifiable, Hashable {
    
    static func == (lhs: Menu, rhs: Menu) -> Bool {
        return lhs.id == rhs.id
    }
    
    var useNavigationLink = true
    
    var id = UUID()
    
    var imageName: String?
    
    var title: String
    
    var fontColor: Color?
    
    init(imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
    }
    
    init(title: String, fontColor: Color? = nil, useNavigationLink: Bool = true) {
        self.title = title
        self.fontColor = fontColor
        self.useNavigationLink = useNavigationLink
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
}
