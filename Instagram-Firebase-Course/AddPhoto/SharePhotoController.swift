//
//  SharePhotoController.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 4. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

class SharePhotoController: UIViewController {
    
    var selectedImage : UIImage? {
        didSet {
            imageView.image = selectedImage
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.rgb(red: 240, green: 240, blue: 240)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Share", style: .plain, target: self, action: #selector(handleShare))
        
        setupImageAndTextViews()
    }
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let textView : UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 15)
        return tv
    }()
    
    fileprivate func setupImageAndTextViews() {
        let containerView = UIView()
        containerView.backgroundColor = .white
        
        view.addSubview(containerView)
        containerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0, right: view.rightAnchor, paddingRight: 0, left: view.leftAnchor, paddingLeft: 0, bottom: nil, paddingBottom: 0, width: 0, height: 100)
        
        containerView.addSubview(imageView)
        imageView.anchor(top: containerView.topAnchor, paddingTop: 8, right: nil, paddingRight: 0, left: containerView.leftAnchor, paddingLeft: 8, bottom: containerView.bottomAnchor, paddingBottom: 8, width: 84, height: 0)
        
        containerView.addSubview(textView)
        textView.anchor(top: containerView.topAnchor, paddingTop: 0, right: containerView.rightAnchor, paddingRight: 0, left: imageView.rightAnchor, paddingLeft: 4, bottom: containerView.bottomAnchor, paddingBottom: 0, width: 0, height: 0)
    }
    
    @objc func handleShare() {
        print("Sharing photo")
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
}
