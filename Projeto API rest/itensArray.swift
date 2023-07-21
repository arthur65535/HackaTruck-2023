//
//  itensArray.swift
//  Projeto API rest
//
//  Created by Student02 on 03/07/23.
//

import Foundation

struct Carro: Codable {
    init (Modelo: String, Ano: Int, Cor: String, Preco: Double){
        self.Modelo = Modelo
        self.Ano = Ano
        self.Cor = Cor
        self.Preco = Preco
    }
    
    var Modelo: String
    var Ano: Int
    var Cor: String
    var Preco: Double
}

struct Exemplo1: Codable {
    init (nomeEstacionamento: String, endereco: String, vagas: Int, carros: [Carro]){
        self.nomeEstacionamento = nomeEstacionamento
        self.endereco = endereco
        self.vagas = vagas
        self.carros = carros
    }
    
    var nomeEstacionamento: String
    var endereco: String
    var vagas: Int
    var carros: [Carro]
}
