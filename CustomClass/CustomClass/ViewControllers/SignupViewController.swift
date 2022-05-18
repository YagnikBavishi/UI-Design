//
//  SignupViewController.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 03/05/22.
//
import Foundation
import UIKit

class SignupViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var btnCheckBox: UIButton!
    @IBOutlet weak var txtFirstName: CustomTextField!
    @IBOutlet weak var txtEmail: CustomTextField!
    @IBOutlet weak var txtPassword: CustomTextField!
    @IBOutlet weak var lblTermsAndPrivacy: UILabel!
    
    // MARK: - Variables
    var coordinator: SignupCoordinator?
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    // MARK: - File Private Functions
    fileprivate func initialSetup() {
        btnCheckBox.layer.cornerRadius = 8
        lblTermsAndPrivacy.font = UIFont(name: Constants.poppinsSemiBold, size: 12.0)
        self.hideKeyboardWhenTapAround()
    }
    
    // MARK: - Actions
    @IBAction func chekBoxAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func btnGoLoginVC(_ sender: UIButton) {
        coordinator?.backToLoginVC()
    }
    
    @IBAction func goBackToLogin(_ sender: UIButton) {
        coordinator?.backToLoginVC()
    }
    
    @IBAction func goToProfileScreen(_ sender: Any) {
        coordinator?.goToProfileVC()
    }
    
}// End of class

// MARK: - UITextFieldDelegate
extension SignupViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case self.txtFirstName:
            self.txtEmail.becomeFirstResponder()
        case self.txtEmail:
            self.txtPassword.becomeFirstResponder()
        default:
           self.txtPassword.resignFirstResponder()
        }
        return true
    }

}// End of Extension
