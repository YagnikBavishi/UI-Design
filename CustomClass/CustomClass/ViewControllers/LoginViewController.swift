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
    var user = UserLogin(email: "", password: "")
 
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
    
    @IBAction func btnLoginAction(_ sender: UIButton) {
        user.email = txtEmail.text ?? ""
        user.password = txtPassword.text ?? ""
        guard let json = try? JSONEncoder().encode(user) else {
            return 
        }
        URLSessionRequest.urlSessionRequest(url: "https://reqres.in/api/login", method: "POST", body: json, decodingType: ResponseToken.self) { data in
            switch data {
            case .success(_):
                DispatchQueue.main.async {
                    self.alerts(title: "Success", message: "")
                }
            case .failure(let errorMessage):
                DispatchQueue.main.async {
                    self.alerts(title: "Error", message: "\(errorMessage.error)")
                }
            }
        }
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

