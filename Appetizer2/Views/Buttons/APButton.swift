//
//  APButton.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/28/21.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 60)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)

    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Button")
    }
}
