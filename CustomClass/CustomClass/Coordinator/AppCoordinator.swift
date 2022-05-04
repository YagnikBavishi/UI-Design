//
//  AppCoordinator.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 10/05/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if let navViewController = navController {
            let mainCoordinator = OnBoardingCoordinator(navViewController)
            mainCoordinator.start()
        }
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of class
