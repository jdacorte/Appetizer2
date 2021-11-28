//
//  Appetizer.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/24/21.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 01,
                                           name: "Test Appetizer",
                                           description: "Wicked good appetizer",
                                           price: 7.99,
                                           imageURL: "",
                                           calories: 5,
                                           protein: 8,
                                           carbs: 9)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
