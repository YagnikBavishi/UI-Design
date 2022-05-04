//
//  Lable.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 28/04/22.
//

import Foundation
import UIKit

/// This Custom Class is used for Label with semibold style

@IBDesignable
class CustomLabel: UILabel {
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetUp()
    }
    
    // MARK: - IBInspectable
    @IBInspectable var fontSize: CGFloat = 14.0 {
        didSet {
            initialSetUp()
        }
    }
    
    @IBInspectable var textCustomColor: UIColor = UIColor(red: 0.071, green: 0.047, blue: 0.271, alpha: 1) {
        didSet {
            self.textColor = textCustomColor
            initialSetUp()
        }
    }
    
    // MARK: -  Functions
    func initialSetUp() {
        self.font = UIFont(name: Constants.poppinsSemiBold, size: fontSize)
        self.textColor = textCustomColor
        self.numberOfLines = 0
    }
    
}// End of class

