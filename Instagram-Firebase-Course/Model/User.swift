//
//  User.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 31. 01. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import Foundation

struct User {
    let username : String
    let profileImageUrl : String
    
    init(dictionary : [String : Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
