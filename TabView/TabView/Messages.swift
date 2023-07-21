//
//  Messages.swift
//  TabView
//
//  Created by Student02 on 23/06/23.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        TabView{
            Home()
                .badge(2)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            Lupa()
                .tabItem{
                    Label("", systemImage: "magnifyingglass")
                }
            Photos()
                .tabItem{
                    Label("Photos", systemImage: "photo")
                }
            Messages()
                .badge(1)
                .tabItem{
                    Label("Messages", systemImage: "message")
                }
            Profile()
                .tabItem{
                    Label("Profile", systemImage: "person.circle.fill")
            }
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
