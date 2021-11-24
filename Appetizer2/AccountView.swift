//
//  AccountView.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/23/21.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Text("Account View")
            .navigationTitle("❌ Accounts")
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
