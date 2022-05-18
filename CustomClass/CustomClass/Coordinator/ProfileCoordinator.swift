//
//  ProfileCoorinator.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 17/05/22.
//

import Foundation
import UIKit

class ProfileCoordinator: Coordinator {
  
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if let profileViewController = UIStoryboard(name: "ProfileScreen", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController {
            profileViewController.coordinator = self
            navController?.pushViewController(profileViewController, animated: true)
        }
    }
    
    func goback() {
        navController?.popViewController(animated: true)
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of class
