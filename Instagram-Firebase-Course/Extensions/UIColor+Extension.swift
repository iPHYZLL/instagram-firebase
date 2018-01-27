//
//  UIColor+Extension.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 27. 01. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red : CGFloat, green : CGFloat, blue : CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
}
