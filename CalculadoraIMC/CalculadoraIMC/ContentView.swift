//
//  ContentView.swift
//  CalculadoraIMC
//
//  Created by Student02 on 22/06/23.
//

import SwiftUI

struct ContentView: View {
    func converteString(palavra: String) -> Double{//CONVERTE STRING EM DOUBLE
        var num: Double = 0
        
        num = Double(palavra) ?? 0.0
        if (num == 0.0){
            return 0
        } else {
            return num
        }
    }
    //-------------------------------------
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State var IMC: Double = 0.0
    @State var corFundo = Color("")
    
    var body: some View {
        ZStack{
            VStack(alignment: .center){
                //-------------------------
                Text("Calculadora de IMC")//TITULO
                    .font(.title)
                HStack(alignment: .center){//INSERE TEXTO
                    TextField("Peso (kg): ", text: $peso)
                        .padding()
                        .keyboardType(.decimalPad)
                        .background(Color(.white))
                }
                HStack(alignment: .center){//INSERE ALTURA
                    TextField("Altura (cm): ", text: $altura)
                        .padding()
                        .keyboardType(.decimalPad)
                        .background(Color(.white))
                }

                Button(action: {//LOGICA VAI AQUI
                    IMC = converteString(palavra: peso) * 10000 / (converteString(palavra: altura) * converteString(palavra: altura))
                    
                    if (IMC > 0 && IMC < 18.5){//ALTERA VAR DA COR DE FUNDO
                        corFundo = Color("baixoPeso")
                    } else if (IMC > 0 && IMC <= 24.99){
                        corFundo = Color("normal")
                    } else if (IMC > 0 && IMC <= 29.99){
                        corFundo = Color("sobrepeso")
                    } else if (IMC > 0 && IMC >= 30){
                        corFundo = Color("obesidade")
                    } else {
                        corFundo = Color("")
                    }
                }){//BOTAO CALCULAR
                    Text("Calcular")
                        .bold()
                        .font(.title2)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .cornerRadius(8.0)
                }
                Spacer()
                if (IMC > 0 && IMC < 18.5){//ALTERA TEXTO
                    Text("Baixo Peso")
                        .bold()
                        .font(.title2)
                } else if (IMC > 0 && IMC <= 24.99){
                    Text("Normal")
                        .bold()
                        .font(.title2)
                } else if (IMC > 0 && IMC <= 29.99){
                    Text("Sobrepeso")
                        .bold()
                        .font(.title2)
                } else if (IMC > 0 && IMC >= 30){
                    Text("Obesidade")
                        .bold()
                        .font(.title2)
                } else {
                    Text("")
                }
                //-------------------------
                Spacer()
                Image("tabela-IMC")//IMAGEM VALORES DO IMC
                    .resizable()
                    .scaledToFit()
                //-------------------------
            }
            .background(corFundo)
        }
    }
}

//baixo peso: #83c635
//normal: #c0d90b
//sobrepeso: #fca500
//obesidade: #f67600

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
