//
//  FirstPageController.swift
//  Daily Note
//
//  Created by Arie Wibowo on 07/05/23.
//

import UIKit

class FirstPageController: UIViewController {

    @IBOutlet weak var welcomeMessage: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var _username: String = ""
    var _password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.textColor = UIColor.yellow
        
    }
    
    @IBAction func usernameInputed(_ sender: UITextField) {
        _username = sender.text ?? ""
    }
    
    @IBAction func passwordInputed(_ sender: UITextField) {
        _password = sender.text ?? ""
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        if (_username.count > 0 && _password.count > 0) {
            print("logged in")
        } else {
            print("please input credentials")
        }
    }
    
}
