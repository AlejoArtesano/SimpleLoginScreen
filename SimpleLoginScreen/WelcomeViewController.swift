//
//  WelcomeViewController.swift
//  SimpleLoginScreen
//
//  Created by Aleksey Kapranov on 05/12/2018.
//  Copyright © 2018 Alejo_KA. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var text: String!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel!.text = text
    }
    
}
