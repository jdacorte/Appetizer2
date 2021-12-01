//
//  EmptyState.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/30/21.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message:String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image (imageName)
                    .resizable()
                    .scaledToFit()
                    .frame( height: 150)
                    
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                
            }
            .offset(y:-50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "A really long message to say that brown cats are wicked nice but not as nice as calicos")
    }
}
