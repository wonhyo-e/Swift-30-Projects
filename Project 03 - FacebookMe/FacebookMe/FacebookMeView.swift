//
//  ContentView.swift
//  FacebookMe
//
//  Created by Woonohyo on 2020/06/13.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct FacebookMeView: View {
    init() {
        // Trick for navigation bar with .inline display mode
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var user: User {
        return User(name: "Octocat", profileImageName: "octocat", education: "GitHub")
    }
    
    var menuSections: [[Menu]] {
        return
            [
                [
                    Menu(imageName: Specs.imageName.friends, title: "Friends"),
                    Menu(imageName: Specs.imageName.events, title: "Events"),
                    Menu(imageName: Specs.imageName.groups, title: "Events"),
                    Menu(imageName: Specs.imageName.education, title: user.education),
                    Menu(imageName: Specs.imageName.townHall, title: "Town Hall"),
                    Menu(imageName: Specs.imageName.instantGames, title: "Instant Games")
                ],
                [
                    Menu(imageName: Specs.imageName.settings, title: "Settings"),
                    Menu(imageName: Specs.imageName.privacyShortcuts, title: "Privacy Shortcuts"),
                    Menu(imageName: Specs.imageName.helpSupport, title: "Help and Support")
                ],
                [
                    Menu(title: "Log Out", fontColor: Color.red, useNavigationLink: false)
                ]
        ]
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .foregroundColor(Color(Specs.color.tint))
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
                    .navigationBarHidden(false)
                
                List {
                    Section {
                        NavigationLink(destination: EmptyView()) {
                            UserRow(user: user)
                        }
                    }
                    
                    ForEach(menuSections, id: \.self) { menus in
                        Section {
                            ForEach(menus) { menu in
                                if menu.useNavigationLink {
                                    NavigationLink(destination: EmptyView()) {
                                        MenuRow(menu: menu)
                                    }
                                } else {
                                    MenuRow(menu: menu)
                                }
                            }
                        }
                    }
                    
                }.listStyle(GroupedListStyle())
                
                Spacer()
            }.navigationBarTitle("Facebook", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FacebookMeView()
    }
}
