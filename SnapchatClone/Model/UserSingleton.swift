//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Şevval Mertoğlu on 24.05.2023.
//

import Foundation

class UserSingleton {
    //Only one object is created in the Singleton class.
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init() {
        
    }
    
}
