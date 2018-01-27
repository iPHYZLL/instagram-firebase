//
//  UIView+Extension.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 27. 01. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchor(top : NSLayoutYAxisAnchor, paddingTop : CGFloat) {
        self.topAnchor.constraint(equalTo: top, constant: paddingTop)
    }
    
}
