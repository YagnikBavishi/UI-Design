
import Foundation
import UIKit.UIViewController

// MARK: - UIViewController
extension UIViewController {
    
    func hideKeyboardWhenTapAround () {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

} // End of Extension
