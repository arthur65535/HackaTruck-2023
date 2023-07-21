//
//  ContentView.swift
//  Aula03
//
//  Created by Student02 on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFit()
                
            }
            HStack {
                Text("HackaTruck")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
            }
            HStack{
                Text("Maker")
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                Text("Space")
                    .foregroundColor(.red)
                    .fontWeight(.bold)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
