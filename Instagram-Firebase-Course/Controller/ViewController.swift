//
//  ViewController.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 26. 01. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let plusPhotoButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        return button
    }()
    
    let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    let emailTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.backgroundColor = UIColor(white: 0, alpha: 0.05)
        textField.borderStyle = .roundedRect
        textField.addLeftImageView(withImage: #imageLiteral(resourceName: "emailIcon"), andTintColor: UIColor.lightGray)
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let usernameTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.backgroundColor = UIColor(white: 0, alpha: 0.05)
        textField.borderStyle = .roundedRect
        textField.addLeftImageView(withImage: #imageLiteral(resourceName: "usernameIcon"), andTintColor: UIColor.lightGray)
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let passwordTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.backgroundColor = UIColor(white: 0, alpha: 0.05)
        textField.borderStyle = .roundedRect
        textField.addLeftImageView(withImage: #imageLiteral(resourceName: "passwordIcon"), andTintColor: UIColor.lightGray)
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        
        plusPhotoButton.anchor(top: view.topAnchor, paddingTop: 40, right: nil, paddingRight: 0, left: nil, paddingLeft: 0, bottom: nil, paddingBottom: 0, width: 140, height: 140)
        
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        setupInputFields()
    }
    
    fileprivate func setupInputFields() {
        
        let stackView = UIStackView(arrangedSubviews: [usernameTextField, emailTextField, passwordTextField, signUpButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        stackView.anchor(top: plusPhotoButton.bottomAnchor, paddingTop: 20, right: view.rightAnchor, paddingRight: 40, left: view.leftAnchor, paddingLeft: 40, bottom: nil, paddingBottom: 0, width: nil, height: 200)
        
    }
    

}
























