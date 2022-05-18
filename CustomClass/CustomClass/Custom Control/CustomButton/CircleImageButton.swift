//
//  CircleImageButton.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 05/05/22.
//

import Foundation
import UIKit

/// This Custom Class is used for giving image in circle shape

@IBDesignable
class BaseImage: UIImageView {

    // MARK: - Inspectables
    @IBInspectable var roundedImage: Bool = true {
        didSet {
            self.layer.cornerRadius = self.frame.size.width / 2;
            self.clipsToBounds = true
        }
    }

} // End of Class
