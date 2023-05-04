//
//  CreditCard.swift
//  SwiftUI.CreditCard
//
//  Created by Salmdo on 5/3/23.
//

import SwiftUI

struct CreditCard<Content> : View where Content: View {
    var content: () -> Content
    
    var body: some View {
       content()
    }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard {
            CreditCardFront(cardHolder: "", expires: "")
        }
    }
}
