//
//  ProfilePageViewController.swift
//  login_page_fireBase
//
//  Created by Cenk Bahadır Çark on 17.08.2022.
//

import UIKit
import Firebase

class ProfilePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    

    @IBAction func logOutButtonClicked(_ sender: Any) {
        do{
            try? Auth.auth().signOut()
            exit(0)
        }
        
    }
    

}
