//
//  ViewController.swift
//  LoginApp2
//
//  Created by Антон Полин  on 05.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
   
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.person.firstName + " " + user.person.secondName
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutVC = navigationVC.topViewController as? AboutMeViewController else { return }
                aboutVC.user = user.person.firstName + " " + user.person.secondName
                aboutVC.firstName = user.person.firstName
                aboutVC.secondName = user.person.secondName
                aboutVC.age = user.person.age
                aboutVC.hobies = user.person.hobbies
                aboutVC.cat = user.person.myPets
            
            } else if let navigationVC = viewController as? UINavigationController {
                guard navigationVC.viewControllers.first is PhotoViewController else { return }
                
            }
        }
      
            }
        
       
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed() {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

    
    

