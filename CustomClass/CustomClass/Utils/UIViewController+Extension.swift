//
//  KeyboardFunctions.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 02/05/22.
//

import Foundation
import UIKit.UIViewController

// MARK: - UIViewController
extension UIViewController {
    
    func hideKeyboardWhenTapAround () {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

} // End of Extension
