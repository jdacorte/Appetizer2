//
//  User.swift
//  Appetizer2
//
//  Created by John DaCorte on 11/29/21.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
