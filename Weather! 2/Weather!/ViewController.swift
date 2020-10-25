//
//  ViewController.swift
//  Weather!
//

//

import UIKit

class ViewController: UIViewController {

    private let login = "admin"
    private let password = "12345"
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if checkInputs() {
            return true
        } else{
            let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
            let action = UIAlertAction(title: "Хорошо", style: .default) { (action) in
                self.loginField.text = ""
                self.passwordField.text = ""
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            return false
        }
    }
    
    private func checkInputs() -> Bool {
        return loginField.text == login && passwordField.text == password }
}

