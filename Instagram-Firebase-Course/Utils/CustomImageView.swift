//
//  CustomImageView.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 8. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

var imageCache = [String : UIImage]()

class CustomImageView: UIImageView {
    
    var lastURLUsedToLoadImage : String?
    
    func loadImage(urlString : String) {
        
        self.image = nil
        
        if let cachedImage = imageCache[urlString] {
            self.image = cachedImage
            return
        }
        
        lastURLUsedToLoadImage = urlString
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            if let err = err {
                print("Failed to fetch post image:", err)
                return
            }
            
            if url.absoluteString != self.lastURLUsedToLoadImage {
                return
            }
            
            guard let imageData = data else { return }
            
            let photoImage = UIImage(data: imageData)
            
            imageCache[url.absoluteString] = photoImage
            
            DispatchQueue.main.async {
                self.image = photoImage
            }
        }.resume() // !!!!!!!!!!!!!!!!
        
    }
    
}
