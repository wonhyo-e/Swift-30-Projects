//
//  MenuRow.swift
//  FacebookMe
//
//  Created by Woonohyo on 2020/06/14.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    var menu: Menu
    
    var body: some View {
        if let imageName = menu.imageName {
            return AnyView(HStack {
                Image(imageName).resizable().scaledToFit().frame(width: 20, height: 20)
                Text(menu.title)
                Spacer()
            })
        } else {
            return AnyView(Text(menu.title).foregroundColor(menu.fontColor))
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        Section {
            MenuRow(menu: Menu(imageName: "fb_friends", title: "friends"))
        }.previewLayout(PreviewLayout.fixed(width: 300, height: 44))
    }
}
