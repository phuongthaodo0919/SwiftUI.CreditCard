//
//  ContentView.swift
//  SwiftUI.CreditCard
//
//  Created by Salmdo on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var degree: Double = 0
    @State private var flipped: Bool = false
    
    @State var name: String = ""
    @State var expires: String = ""
    @State var cvv: String = ""
    
    var body: some View {
        VStack {
            CreditCard {
                    Group {
                        if flipped == true {
                            CreditCardBack(cvv: cvv)
                        } else {
                            CreditCardFront(cardHolder: name, expires: expires)
                        }
                        
                        
                    }.rotation3DEffect(.degrees(degree), axis: (x: 0.0, y: 1.0, z: 0.0))
                }
                    
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Expires", text: $expires)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("CVV", text: $cvv, onEditingChanged: { _ in
                withAnimation {
                    degree += 180
                    flipped.toggle()
                }
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
