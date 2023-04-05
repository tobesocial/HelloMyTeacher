//
//  GreetingViewController.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 02.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    
    var username: String!
    var personName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        usernameLabel.text = "Welcome, \(username ?? "") !"
        personNameLabel.text = "My name is \(personName ?? "") !"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else { return }
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
    

 
