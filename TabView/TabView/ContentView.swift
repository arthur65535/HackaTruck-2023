//
//  ContentView.swift
//  TabView
//
//  Created by Student02 on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
