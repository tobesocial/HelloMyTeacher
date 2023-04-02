//
//  GreetingViewController.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 02.04.2023.
//

import UIKit

class GreetingViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = username
    }
    
}
