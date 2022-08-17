//
//  LogInScreenViewController.swift
//  login_page_fireBase
//
//  Created by Cenk Bahadır Çark on 17.08.2022.
//

import UIKit

class LogInScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toSigInButton(_ sender: Any) {
        performSegue(withIdentifier: "toLogIn", sender: nil)
    }
    @IBAction func toRegisterButton(_ sender: Any) {
        performSegue(withIdentifier: "toRegister", sender: nil)
    }
}
