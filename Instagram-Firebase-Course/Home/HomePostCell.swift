//
//  HomePostCell.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 8. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

class HomePostCell: UICollectionViewCell {
    
    var post : Post? {
        didSet {
            guard let postImageUrl = post?.imageUrl else { return }
            
            photoImageView.loadImage(urlString: postImageUrl)
        }
    }
    
    let photoImageView : CustomImageView = {
        let iv = CustomImageView()
        iv.backgroundColor = .blue
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
