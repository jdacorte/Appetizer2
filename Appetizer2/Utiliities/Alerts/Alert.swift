//
//  Alert.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/26/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
//    Network Alerts
    
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text ("Data from Server Invalid"),
                                              dismissButton: .default(Text("OK")))
  
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from server"),
                                              dismissButton: .default(Text("OK")))

    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("Bad URL-trouble connecting to server"),
                                              dismissButton: .default(Text("OK")))
  

    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete request at this time-no network"),
                                              dismissButton: .default(Text("OK")))
  

//    Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Pleae fill out all the boxes"),
                                              dismissButton: .default(Text("OK")))
  

    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Check email make it right"),
                                              dismissButton: .default(Text("OK")))
  

}
