//
//  CustomTextField.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 28/04/22.
//

import Foundation
import UIKit

/// This Custom Class is used for textfield with padding and right image

@IBDesignable
class CustomTextField: UITextField {
    
    //MARK: - Variable
    let padding = UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 49)
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialSetUp()
    }
    
    //MARK: - override Methods
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let textRect = super.rightViewRect(forBounds: bounds)
        return textRect.inset(by: UIEdgeInsets(top: 0, left: -24, bottom: 0, right: 0))
    }
    
    // MARK: - IBInspectable
    @IBInspectable var rightImage: UIImage? {
        didSet {
            initialSetUp()
        }
    }
    
    @IBInspectable var fontSize: CGFloat = 12.0 {
        didSet {
            initialSetUp()
        }
    }
    
    // MARK: -  Functions
    func initialSetUp() {
        self.borderStyle = .none
        self.layer.cornerRadius = 15.0
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor(named: "White")
        self.textColor = UIColor(named: "TextTintColor")
        self.font = UIFont(name: Constants.poppinsReguler, size: fontSize)
        let eyeButton = UIButton()
        if let image = rightImage {
            eyeButton.setImage(image, for: .normal)
            eyeButton.addTarget(self, action: #selector(showHidePassword), for: .touchUpInside)
        } else {
            rightViewMode = UITextField.ViewMode.never
            rightView = nil
        }
        rightViewMode = UITextField.ViewMode.always
        rightView = eyeButton
    }
    
    @objc func showHidePassword() {
        isSecureTextEntry = !isSecureTextEntry
    }
    
}// End of class
