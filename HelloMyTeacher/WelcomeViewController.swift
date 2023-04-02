//
//  GreetingViewController.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 02.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        usernameLabel.text = username
    }
    
    private func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemCyan.cgColor,
            UIColor.systemFill.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
    

 
