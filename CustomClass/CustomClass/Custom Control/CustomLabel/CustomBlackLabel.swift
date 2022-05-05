//
//  CustomBlackLabel.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 02/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for black tint label

class CustomBlackLabel: CustomLabel {
    
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
    override func initialSetUp() {
        self.font = UIFont(name: "Poppins-SemiBold", size: 14)
        self.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}// End of Class
