//
//  RegularSizeButtonClass.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 06/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for giving button backgroud color and tint color

@IBDesignable
class RegularSizeButtonClass: UIButton {
    
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
        self.titleLabel?.font = UIFont(name: Constants.poppinsReguler, size: 12.0)
        self.backgroundColor = UIColor(named: "White")
        self.tintColor = UIColor(red: 0.071, green: 0.047, blue: 0.271, alpha: 1)
    }
    
}// End of class
