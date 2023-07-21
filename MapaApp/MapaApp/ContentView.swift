//
//  ContentView.swift
//  MapaApp
//
//  Created by Student02 on 28/06/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable{//OBJETO LOCAL
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

struct ContentView: View {
    @State private var locaisVet = []
    
    func preencheVet(){
        locaisVet.append(Location(name: "Brazil", coordinate: CLLocationCoordinate2D(latitude: 40.83834587046632, longitude: 14.254053016537693), flag: "🇧🇷", description: "Pais sul americano gigante. Em termos de recursos naturais e um espetaculo. Em termos de gente e uma lastima. Maior cidade: Sao Paulo. Capital: Mordor."))
        locaisVet.append(Location(name: "Australia", coordinate: CLLocationCoordinate2D(latitude: 40.83834587046632, longitude: 14.254053016537693), flag: "", description: "Aqui tem canguru, predadores imensos, insetos gigantes e cancer de pele. Maior cidade: Sydney. Capital: Camberra."))
        locaisVet.append(Location(name: "United States", coordinate: CLLocationCoordinate2D(latitude: 40.83834587046632, longitude: 14.254053016537693), flag: "", description: "Pais norte-americano de dimensoes continentais. Armas, cheeseburgers e hollywood. Maior cidade: New York. Capital: Washington DC."))
        locaisVet.append(Location(name: "Russia", coordinate: CLLocationCoordinate2D(latitude: 40.83834587046632, longitude: 14.254053016537693), flag: "", description: "Pais da Eurasia, e o maior do mundo. Madeira, frio, ursos, comunistas, e bombas nucleares. Capital e maior cidade: Moscou."))
        locaisVet.append(Location(name: "Egito", coordinate: CLLocationCoordinate2D(latitude: 40.83834587046632, longitude: 14.254053016537693), flag: "", description: "Pais africano com muitas piramides e ampla historia documentada, muito legal mesmo, sempre quis visitar la. Capital e maior cidade: Cairo."))
    }
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.83834587046632, longitude: 14.254053016537693), span: MKCoordinateSpan(latitudeDelta: 20.03, longitudeDelta: 20.03))//VARIAVEL REGIAO

//        .ontapgesture
//    maprotation
//        .sheet
    var body: some View {
        VStack{
            HStack{
                Text("World Map")
                    .font(.title)
                    .bold()
            }
            HStack{
                Map(coordinateRegion: $region)
                    .edgesIgnoringSafeArea(.all)
            }
            HStack{
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
