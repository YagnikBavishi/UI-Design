//
//  CustomMintGreenButton.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 05/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for giving button backgroud color as mint and tint color white

@IBDesignable
class CustomMintGreenButton: UIButton {
    
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
        self.backgroundColor = UIColor(red: 0.996, green: 0.643, blue: 0.643, alpha: 1)
        self.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.layer.cornerRadius = frame.height / 2
    }
    
}// End of class
