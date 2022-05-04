import UIKit

/// This Custom Class is used for giving two string in which one string is link string

class CustomLinkButton: UIButton {
    
    // MARK: - IBInspectable
    @IBInspectable var text: String = "" {
        didSet {
            linkStrings()
        }
    }
    
    @IBInspectable var link: String = "" {
        didSet {
            linkStrings()
        }
    }
    
    // MARK: - Functions
    func linkStrings() {
        let mainString = NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 0.494, green: 0.482, blue: 0.592, alpha: 1), NSAttributedString.Key.font : UIFont(name: Constants.poppinsReguler, size: 12) ?? UIFont.systemFont(ofSize: 14)])
        
        let coloredString = NSAttributedString(string: link, attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 0.071, green: 0.047, blue: 0.271, alpha: 1), NSAttributedString.Key.font : UIFont(name: Constants.poppinsMedium, size: 12) ?? UIFont.systemFont(ofSize: 14)])
        
        mainString.append(coloredString)
        self.setAttributedTitle(mainString, for: .normal)
    }

}// End of class
