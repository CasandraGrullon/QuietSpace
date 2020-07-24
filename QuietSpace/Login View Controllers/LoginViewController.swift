//
//  LoginViewController.swift
//  QuietSpace
//
//  Created by casandra grullon on 7/24/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var appLogoImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        UIViewController.showSignUpView()
    }
    
}
