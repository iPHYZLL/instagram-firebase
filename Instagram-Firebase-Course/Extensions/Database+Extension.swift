//
//  Database+Extension.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 9. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import Firebase
import FirebaseDatabase

extension Database {
    static func fetchUserWithUID(uid : String, completion: @escaping (User) -> ()) {
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String : Any] else { return }
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            completion(user)
            
        }) { (err) in
            print("Failed to fetch user for posts:", err)
        }
        
    }
}
