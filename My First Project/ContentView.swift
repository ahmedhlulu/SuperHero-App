//
//  ContentView.swift
//  My First Project
//
//  Created by Ahmed on 10/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    var superheros : [Superhero] = superHerosData
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(superheros) { item in
                    SuperHeroViews(superH: item)
                }// HStack
                .padding(20)
            }
        }// ScrollView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
