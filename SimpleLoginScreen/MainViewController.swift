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
    
    fileprivate func showAlert(tittle: String, message: String) {
        // create the alert
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func signinButtonPressed(_ sender: UIButton) {
        
        guard let usernameTextField = usernameTextField.text else { return }
        guard let passwordTextField = passwordTextField.text else { return }
        
        if !usernameTextField.isEmpty && !passwordTextField.isEmpty {
            
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        
        }
        else if usernameTextField.isEmpty {
            
            showAlert(tittle: "Warning!", message: "Please, enter your name.")
            
        }
        else if passwordTextField.isEmpty {
            showAlert(tittle: "Warning!", message: "Please, enter your password")
            
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





