//
//  CustomRegularWhiteLabel.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 04/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for Regular font 14 size font

class CustomRegularWhiteLabel: CustomLabel {
    
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
        self.font = UIFont(name: "Poppins-Regular", size: 14.0)
        self.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}// End of Class
