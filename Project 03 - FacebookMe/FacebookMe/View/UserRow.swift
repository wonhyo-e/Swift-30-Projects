//
//  UserRow.swift
//  FacebookMe
//
//  Created by Woonohyo on 2020/06/14.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    var user: User
    
    var body: some View {
        HStack {
            Image(user.profileImageName).resizable().scaledToFit().frame(width: 66, height: 66)
            VStack(alignment: .leading, spacing: 2) {
                Text(user.name).font(Font.system(size: 20).bold())
                Text("View your profile").font(Font.system(size: 13).weight(.light))
            }
            Spacer()
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: User(name: "Octocat", profileImageName: "octocat", education: "GitHub")).previewLayout(PreviewLayout.fixed(width: 300, height: 70))
    }
}
