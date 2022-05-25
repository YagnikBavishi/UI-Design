//
//  UserLogin.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 25/05/22.
//

import Foundation

struct UserLogin: Codable {
    
    var email: String
    var password: String
    
}// End of Struct

struct ResponseToken: Codable {
    
    let token: String
    
}// End of Struct
