//
//  UITextField+Extension.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 26. 01. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

extension UITextField {
    
    func addLeftImageView(withImage image : UIImage, andTintColor color : UIColor) {
        
        // always show left view
        leftViewMode = .always
    
        let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        imageView.image = image
        imageView.tintColor = color
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: imageView.frame.origin.x + imageView.frame.width, height: imageView.frame.height))
        view.addSubview(imageView)
        
        leftView = view
        
        // placeholder text color to match tint color aka icon color
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedStringKey.foregroundColor : color])
    }
    
}
