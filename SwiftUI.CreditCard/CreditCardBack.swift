//
//  CreditCardBack.swift
//  SwiftUI.CreditCard
//
//  Created by Salmdo on 5/3/23.
//

import SwiftUI

struct CreditCardBack: View {
    var cvv: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Rectangle()
                .frame(maxHeight: 20)
                .background(Color(uiColor: UIColor(red: 0.13, green: 0.16, blue: 0.24, alpha: 1.00)))
                .padding([.top])
            
            Spacer()
            
            Text(cvv)
                .frame(width: 80, height: 20)
                .foregroundColor(Color(uiColor: UIColor(red: 0.13, green: 0.16, blue: 0.24, alpha: 1.00)))
                .font(.system(size: 15))
                .fontWeight(.medium)
                .background(Color.white)
                .padding()
            
        }.frame(width: 300, height: 200)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .trailing))
            .cornerRadius(10)
            .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
}

struct CreditCardBack_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardBack(cvv: "345")
    }
}
