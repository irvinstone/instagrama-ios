//
//  LoginViewController.swift
//  instagram
//
//  Created by Irvin Leon on 3/7/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: class {
    func loginData(user: String, password: String)
}

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    weak var delegate: LoginViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        guard let userTxt = userTextField.text else {
            return
        }
        guard let passTxt = passwordTextField.text else {
            return
        }
        if userTxt.isEmpty, passTxt.isEmpty {
           return
        }
        delegate?.loginData(user: userTxt, password: passTxt)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
