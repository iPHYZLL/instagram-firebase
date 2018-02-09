//
//  User.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 31. 01. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import Foundation

struct User {
    
    let uid : String
    let username : String
    let profileImageUrl : String
    
    init(uid : String, dictionary : [String : Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
