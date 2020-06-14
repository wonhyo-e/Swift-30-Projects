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
                            UserRow(user: User(name: "Octocat", profileImageName: "octocat", education: "GitHub"))
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
