//
//  LoginViewController.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 02.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let userMain = User.getUser()
    
    private let user = "Alexey"
    private let password = "Efimov"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userMain.login
        passwordTF.text = userMain.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.username = userMain.login
                welcomeVC.personName = userMain.person.name
            } else if let personVC = viewController as? PersonViewController {
                personVC.name = userMain.person.name
            }
        }
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.username = userMain.login
//        welcomeVC.personName = userMain.person.name
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func loginButtonTapped() {
        guard userNameTF.text == userMain.login, passwordTF.text == userMain.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user) 👨‍💻")
            : showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 👨‍💻")
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

