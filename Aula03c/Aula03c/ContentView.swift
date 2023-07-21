//
//  ContentView.swift
//  Aula03c
//
//  Created by Student02 on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    var imgCaminhao = Image("caminhao")
    @State var nome: String
    
    var body: some View {
        ZStack{
            imgCaminhao
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.2)
                    .blur(radius: 2)
            VStack{
                Text("Bem vindo, \(nome)")
                    .font(.largeTitle)
                
                TextField("Digite seu nome aqui", text: $nome)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 10)
                        .shadow(radius: 10)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
