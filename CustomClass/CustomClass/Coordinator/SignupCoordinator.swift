//
//  SignupViewController.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 10/05/22.
//

import Foundation
import UIKit

class SignupCoordinator: Coordinator {
  
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if let signUpViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController {
            signUpViewController.coordinator = self
            navController?.pushViewController(signUpViewController, animated: true)
        }
    }
    
    func backToLoginVC() {
        navController?.popViewController(animated: true)
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of class
