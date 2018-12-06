//
//  SignUpViewController.swift
//  SimpleLoginScreen
//
//  Created by Aleksey Kapranov on 05/12/2018.
//  Copyright © 2018 Alejo_KA. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var signupNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeSegue" {
            guard let destinationVC = segue.destination as? WelcomeViewController else { return }
            destinationVC.text = signupNameTextField.text
        }
    
    }
}
