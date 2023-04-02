//
//  ViewController.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 02.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.username = userNameTF.text
    }

    @IBAction func loginButtonTapped() {
        
    }
    
}

