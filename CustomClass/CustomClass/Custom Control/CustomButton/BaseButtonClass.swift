//
//  CustomButton.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 28/04/22.
//

import Foundation
import UIKit

/// This Custom Class is used for giving button backgroud color and tint color

@IBDesignable
class BaseButtonClass: UIButton {
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetUp()
    }
    
    // MARK: -  Functions
    func initialSetUp() {
        self.titleLabel?.font = UIFont(name: Constants.poppinsSemiBold, size: 14.0)
        self.backgroundColor = UIColor(red: 0.769, green: 0.58, blue: 1, alpha: 1)
        self.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.layer.cornerRadius = 25
    }
    
}// End of class
