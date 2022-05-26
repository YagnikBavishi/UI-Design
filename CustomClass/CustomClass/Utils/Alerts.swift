//
//  Alerts.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 26/05/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alerts(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}
