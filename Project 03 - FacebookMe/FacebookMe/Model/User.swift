//
//  User.swift
//  FacebookMe
//
//  Created by Woonohyo on 2020/06/14.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import Foundation

class User {
    
    var name: String
    
    var profileImageName: String
    
    var education: String
    
    init(name: String, profileImageName: String, education: String) {
        self.name = name
        self.profileImageName = profileImageName
        self.education = education
    }
}
