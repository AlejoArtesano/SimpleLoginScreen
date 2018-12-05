//
//  ViewController.swift
//  SimpleLoginScreen
//
//  Created by Aleksey Kapranov on 03/12/2018.
//  Copyright © 2018 Alejo_KA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func UnwindFromVC(unwindSegue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! WelcomeViewController
        destinationVC.text = (usernameTextField?.text)!
    }

}

