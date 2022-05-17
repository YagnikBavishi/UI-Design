//
//  OnbordingCollectionViewCell.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 04/05/22.
//

import UIKit

class OnbordingCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imgOnbordingImage: UIImageView!
    @IBOutlet weak var lblHeader: LargeSizeLabel!
    @IBOutlet weak var lblSubHeader: CustomRegularWhiteLabel!
    
    // MARK: - Functions
    func configureCell(page: Page) {
        self.lblHeader.text = page.title
        self.lblSubHeader.text = page.subTitle
    }

}// End of class
