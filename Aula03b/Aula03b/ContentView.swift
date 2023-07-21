//
//  ContentView.swift
//  Aula03b
//
//  Created by Student02 on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFit()
            }
            HStack{
                ZStack{
                    Image("caminhao")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                    Text("HackaTruck")
                        .foregroundColor(.blue)
                        .bold()
                        .offset(x: 0, y: -50)
                }
            }.padding(.vertical)
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    
            }.frame(width: 250, height: 200).background(Color(.black))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
