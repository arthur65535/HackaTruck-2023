//
//  Home.swift
//  TabView
//
//  Created by Student02 on 23/06/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        List(1...50, id: \.self) {
            
            Text("item \($0)")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
