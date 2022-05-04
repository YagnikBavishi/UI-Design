//
//  ViewController.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 28/04/22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var txtEmail: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextField!
    
    // MARK: - Variables
    var coordinator: LoginCoordinator?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTapAround()
    }

    @IBAction func goSignUpScreen(_ sender: UIButton) {
        coordinator?.startSignupViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}// End of class

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case self.txtEmail:
            self.txtPassword.becomeFirstResponder()
        default:
           self.txtPassword.resignFirstResponder()
        }
        return true
    }

}// End of Extension

