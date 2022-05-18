//
//  CustomRegularLabel.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 09/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for regular  12 size font

class  CustomRegularLabel: CustomLabel {
    
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
        self.font = UIFont(name: "Poppins-Regular", size: 12.0)
        self.textColor = UIColor(red: 0.494, green: 0.482, blue: 0.592, alpha: 1)
    }
    
}// End of Class
