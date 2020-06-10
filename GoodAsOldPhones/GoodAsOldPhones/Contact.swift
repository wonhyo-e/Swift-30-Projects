//
//  Contact.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct Contact: View {
    var body: some View {
        VStack {
            Image("header-contact")
            
            Text("About Us").font(.title).bold()
            
            Text("Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:").font(Font.custom("Iowan Old Style Roman", size: 14.0)).padding(EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40))
            
            Text("Whether you are looking for a turn-of-the-century wall set or a Zack Morris Special, we've got you covered. Give us a ring, and we will get you connected.").font(Font.custom("Iowan Old Style Roman", size: 14.0)).padding(EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40))
            
            Text("*Hands-free phones available").font(Font.custom("Iowan Old Style Italic", size: 13.0)).frame(minWidth: nil, idealWidth: nil, maxWidth: .infinity, minHeight: nil, idealHeight: nil, maxHeight: nil, alignment: .leading).padding(EdgeInsets(top: 10, leading: 40, bottom: 30, trailing: 40))
            
            
            Text("Contact").font(.title).bold()
            
            HStack {
                Image("icon-about-email")
                Text("good-as-old@example.com").frame(width: 250, height: 20, alignment: .leading)
            }
            
            HStack {
                Image("icon-about-phone")
                Text("412-888-9028").frame(width: 250, height: 20, alignment: .leading)
            }
            
            HStack {
                Image("icon-about-website")
                Text("www.example.com").frame(width: 250, height: 20, alignment: .leading)
            }
        }
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact()
    }
}
