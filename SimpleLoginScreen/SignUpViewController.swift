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
        if segue.identifier != nil {
            let destinationVC = segue.destination as! WelcomeViewController
            destinationVC.text = (signupNameTextField?.text)!
        }
    
    }
}
