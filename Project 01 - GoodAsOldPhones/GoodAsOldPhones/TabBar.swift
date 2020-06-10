//
//  TabBar.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ProductList().tabItem {
                Text("Products")
            }
            
            Contact().tabItem {
                Text("Contact Us")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
