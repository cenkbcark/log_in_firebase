//
//  RegisterPageViewController.swift
//  login_page_fireBase
//
//  Created by Cenk Bahadır Çark on 17.08.2022.
//

import UIKit
import Firebase

class RegisterPageViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordAgainTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func registerButtonClicked(_ sender: Any) {
        
        if usernameTextField.text != nil{
            if passwordTextField.text == passwordAgainTextField.text{
                Auth.auth().createUser(withEmail: usernameTextField.text!, password: passwordTextField.text!) { data, error in
                    
                    if error != nil{
                        self.alertMessage(titleInput: "Error", messageInput: "Please try again later")
                        
                    }else{
                        let alert = UIAlertController(title: "Congrats", message: "You have successfully create an account!", preferredStyle: UIAlertController.Style.alert)
                        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {_ in
                            self.navigationController?.popToRootViewController(animated: true)
                        })
                        alert.addAction(okButton)
                        self.present(alert, animated: true)
                    }
                }
            }else{
                let alert = UIAlertController(title: "Error", message: "Password does not match!", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            }
        }
        
    }
    func alertMessage(titleInput: String, messageInput : String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }

}
