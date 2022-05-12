//
//  SecondView.swift
//  My First Project
//
//  Created by Ahmed on 10/05/2022.
//

import SwiftUI

struct SuperHeroViews: View {
    
    var superH : Superhero
    @State var isAlertPresented: Bool = false
    
    var body: some View {
        ZStack {
            Image(superH.image)
                .resizable()
                .scaledToFill()
            
            VStack{
                Text(superH.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                
                Button {
                    // button action
                    isAlertPresented.toggle()
                    
                } label: {
                    
                    HStack {
                        Text("Start")
                        Image(systemName: "arrow.right.circle")
                        
                    } //: HStack
                    .foregroundColor(.white)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: superH.gradientColors), startPoint: .bottomTrailing, endPoint: .topLeading))
                    .clipShape(Capsule())
                    .shadow(radius: 10)
                    .alert(isPresented: $isAlertPresented) {
                        Alert(title: Text("More About \(superH.title)"), message: Text(superH.message), dismissButton: .default(Text("OK")))
                    }
                } //: Label
                
            }//: VStack
            .offset(x: 0, y: 150)
            
        } //ZStack
        .frame(width: 350, height: 550, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: superH.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(18)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SuperHeroViews(superH: superHerosData[1])
    }
}
