//
//  LoginController.swift
//  Instagram-Firebase-Course
//
//  Created by Alen Kirm on 1. 02. 18.
//  Copyright © 2018 Alen Kirm. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Don't have an account? Sign Up.", for: .normal)
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        return button
    }()
    
    @objc func handleShowSignUp() {
        let signUpController = SignUpController()
        // present sign up controller
        navigationController?.pushViewController(signUpController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(signUpButton)
        signUpButton.anchor(top: nil, paddingTop: 0, right: view.rightAnchor, paddingRight: 0, left: view.leftAnchor, paddingLeft: 0, bottom: view.bottomAnchor, paddingBottom: 0, width: 0, height: 50)
    }
    
}
