//
//  OnBoardingCoordinator.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 13/05/22.
//

import Foundation
import UIKit

class OnBoardingCoordinator: Coordinator {
  
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if let onBoardingViewController = UIStoryboard(name: "OnbordingScreen", bundle: nil).instantiateViewController(withIdentifier: "OnbordingViewController") as? OnbordingViewController {
            onBoardingViewController.coordinator = self
            navController?.pushViewController(onBoardingViewController, animated: true)
        }
    }
    
    func goLoginVC() {
        if let navController = navController {
            let secondCoordinator = LoginCoordinator(navController)
            secondCoordinator.start()
        }
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of class
