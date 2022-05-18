//
//  CustomSemiboldH4Size.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 05/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for semibold font 13 size font

class CustomSemiboldH4Size: CustomLabel {
    
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
        self.font = UIFont(name: "Poppins-SemiBold", size: 13.0)
        self.textColor =  UIColor(red: 0.071, green: 0.047, blue: 0.271, alpha: 1)
    }
    
}// End of Class
