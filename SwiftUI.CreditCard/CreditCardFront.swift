//
//  CreditCardFront.swift
//  SwiftUI.CreditCard
//
//  Created by Salmdo on 5/3/23.
//

import SwiftUI

struct CreditCardFront: View {
    var cardHolder: String
    var expires: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color.white)
                Spacer()
                Text("VISA")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
            }
            Spacer()
            
            Text("**** **** **** 2344")
                .font(.system(size: 32))
                .foregroundColor(Color.white)
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Card Holder")
                        .foregroundColor(Color(uiColor: UIColor(red: 0.13, green: 0.16, blue: 0.24, alpha: 1.00)))
                        .font(.system(size: 12))
                    
                    Text(cardHolder)
                        .textCase(.uppercase)
                        .foregroundColor(Color.white)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Expires")
                        .foregroundColor(Color(uiColor: UIColor(red: 0.13, green: 0.16, blue: 0.24, alpha: 1.00)))
                        .font(.system(size: 12))
                    
                    Text(expires)
                        .foregroundColor(Color.white)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }
            }

            
        }
            .frame(width: 300, height: 200)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .trailing))
            .cornerRadius(10)
    }
}

struct CreditCardFront_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardFront(cardHolder: "Hello name", expires: "12/12")
    }
}
