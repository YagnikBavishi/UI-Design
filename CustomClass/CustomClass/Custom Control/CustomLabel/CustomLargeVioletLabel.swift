//
//  CustomLargeVioletLabel.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 05/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for Bold font 20 size font

class  CustomLargeVioletLabel: CustomLabel {
    
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
        self.font = UIFont(name: "Poppins-SemiBold", size: 20.0)
        self.textColor = UIColor(red: 18, green: 12, blue: 69, alpha: 1)
    }
    
}// End of Class
