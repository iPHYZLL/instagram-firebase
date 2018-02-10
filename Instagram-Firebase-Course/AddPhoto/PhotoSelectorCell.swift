//
//  PhotoSelectorCell.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 2. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

class PhotoSelectorCell: UICollectionViewCell {
    
    let photoImageView : UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .white
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        photoImageView.anchor(top: topAnchor, paddingTop: 0, right: rightAnchor, paddingRight: 0, left: leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBottom: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
