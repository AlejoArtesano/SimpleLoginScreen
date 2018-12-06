//
//  MainViewController.swift
//  SimpleLoginScreen
//
//  Created by Aleksey Kapranov on 03/12/2018.
//  Copyright © 2018 Alejo_KA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButtonPressed: UIButton!
    
    @IBAction func UnwindFromVC(unwindSegue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Only segue to WelcomeViewController has identifier
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeSegue" {
            guard let destinationVC = segue.destination as? WelcomeViewController else { return }
            destinationVC.text = usernameTextField.text
        }
        
    }
    
    
}





