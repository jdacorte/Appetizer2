//
//  OrderView.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/23/21.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Order View")
            .navigationTitle("✅ Orders")
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
