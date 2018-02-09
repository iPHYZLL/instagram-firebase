//
//  UserSearchCell.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 9. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

class UserSearchCell: UICollectionViewCell {
    
    let profileImageView : CustomImageView = {
        let iv = CustomImageView()
        iv.backgroundColor = .red
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let usernameLabel : UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(profileImageView)
        addSubview(usernameLabel)
        
        profileImageView.anchor(top: nil, paddingTop: 0, right: nil, paddingRight: 0, left: leftAnchor, paddingLeft: 8, bottom: nil, paddingBottom: 0, width: 50, height: 50)
        profileImageView.layer.cornerRadius = 50 / 2
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        usernameLabel.anchor(top: topAnchor, paddingTop: 0, right: rightAnchor, paddingRight: 0, left: profileImageView.rightAnchor, paddingLeft: 8, bottom: bottomAnchor, paddingBottom: 0, width: 0, height: 0    )
        
        let separatorView = UIView()
        separatorView.backgroundColor = UIColor(white: 0, alpha: 0.5)
        addSubview(separatorView)
        
        separatorView.anchor(top: nil, paddingTop: 0, right: rightAnchor, paddingRight: 0, left: usernameLabel.leftAnchor, paddingLeft: 0, bottom: bottomAnchor, paddingBottom: 0, width: 0, height: 0.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
