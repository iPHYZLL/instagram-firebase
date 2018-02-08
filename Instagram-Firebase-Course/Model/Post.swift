//
//  Post.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 4. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl : String
    
    init(dictionary : [String : Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
