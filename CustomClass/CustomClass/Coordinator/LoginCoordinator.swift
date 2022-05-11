//
//  LoginCoordinator.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 10/05/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
  
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            loginViewController.coordinator = self
            navController?.pushViewController(loginViewController, animated: true)
        }
    }
    
    func startSignupViewController() {
        if let navController = navController {
            let secondCoordinator = SignupCoordinator(navController)
            secondCoordinator.start()
        }
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of class
