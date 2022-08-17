
import UIKit
import Firebase


class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logButtonClicked(_ sender: Any) {
        
        if usernameTextField.text != nil && passwordTextField.text != nil {
            Auth.auth().signIn(withEmail: usernameTextField.text!, password: passwordTextField.text!){data, error in
                if error != nil {
                    print("error")
                    let alert = UIAlertController(title: "Error", message: "Please check your username and password", preferredStyle: UIAlertController.Style.alert)
                    let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                    alert.addAction(okButton)
                    self.present(alert, animated: true)
                }else{
                    self.performSegue(withIdentifier: "toTabBar", sender: nil)
                    
                }
            }
        }
    }
    
}

