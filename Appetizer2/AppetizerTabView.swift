//
//  ContentView.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/23/21.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
