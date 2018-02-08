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
    
    let userProfileImageView : CustomImageView = {
        let iv = CustomImageView()
        iv.backgroundColor = .blue
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let photoImageView : CustomImageView = {
        let iv = CustomImageView()
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
    
    let optionsButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("•••", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let likeButton : UIButton = {
       let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "like_unselected").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let commentButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "comment").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let sendMessageButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "send2").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let bookmarkButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "ribbon").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let captionLabel : UILabel = {
        let label = UILabel()
        
        let attributedText = NSMutableAttributedString(string: "Username", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: " Some caption text that will perhaps wrap onto next line.", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14)]))
        attributedText.append(NSAttributedString(string: "\n\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 4)]))
        
        attributedText.append(NSAttributedString(string: "1 week ago", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14), NSAttributedStringKey.foregroundColor : UIColor.lightGray]))
        
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(userProfileImageView)
        addSubview(photoImageView)
        addSubview(usernameLabel)
        addSubview(optionsButton)
        
        userProfileImageView.anchor(top: topAnchor, paddingTop: 8, right: nil, paddingRight: 0, left: leftAnchor, paddingLeft: 8, bottom: nil, paddingBottom: 0, width: 40, height: 40)
        userProfileImageView.layer.cornerRadius = 40 / 2
        
        usernameLabel.anchor(top: topAnchor, paddingTop: 0, right: optionsButton.leftAnchor, paddingRight: 0, left: userProfileImageView.rightAnchor, paddingLeft: 8, bottom: photoImageView.topAnchor, paddingBottom: 0, width: 0, height: 0)
        
        optionsButton.anchor(top: topAnchor, paddingTop: 0, right: rightAnchor, paddingRight: 0, left: nil, paddingLeft: 0, bottom: photoImageView.topAnchor, paddingBottom: 0, width: 44, height: 0)
        
        photoImageView.anchor(top: userProfileImageView.bottomAnchor, paddingTop: 8, right: rightAnchor, paddingRight: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBottom: 0, width: 0, height: 0)
        photoImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        
        setupActionButtons()
        
        addSubview(captionLabel)
        captionLabel.anchor(top: likeButton.bottomAnchor, paddingTop: 0, right: rightAnchor, paddingRight: 8, left: leftAnchor, paddingLeft: 8, bottom: bottomAnchor, paddingBottom: 0, width: 0, height: 0)
        
    }
    
    fileprivate func setupActionButtons() {
        
        let stackView = UIStackView(arrangedSubviews: [likeButton, commentButton, sendMessageButton])
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        stackView.anchor(top: photoImageView.bottomAnchor, paddingTop: 0, right: nil, paddingRight: 0, left: leftAnchor, paddingLeft: 8, bottom: nil, paddingBottom: 0, width: 120, height: 50)
        
        addSubview(bookmarkButton)
        bookmarkButton.anchor(top: photoImageView.bottomAnchor, paddingTop: 0, right: rightAnchor, paddingRight: 0, left: nil, paddingLeft: 0, bottom: nil, paddingBottom: 0, width: 40, height: 50)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
