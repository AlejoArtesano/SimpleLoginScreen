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
    @IBOutlet weak var signinButton: UIButton!
    
    @IBAction func unwindFromVC(unwindSegue: UIStoryboardSegue) {
    }
    
    @IBAction func signinButtonPressed(_ sender: UIButton) {
        
        guard let usernameTextField = usernameTextField.text else { return }
        guard let passwordTextField = passwordTextField.text else { return }
        
        if !usernameTextField.isEmpty && !passwordTextField.isEmpty {
            
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        
        }
        else {
            
            //TODO: - Add Alert Notifications
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destinationVC = segue.destination as? WelcomeViewController else { return }
        destinationVC.text = usernameTextField.text
        
    }
    
    
}





