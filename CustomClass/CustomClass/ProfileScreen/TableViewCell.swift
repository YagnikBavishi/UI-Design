//
//  TableViewCell.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 05/05/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var lblDoctorName: CustomSemiboldH4Size!
    @IBOutlet weak var lblDoctorSpecialist: CustomRegularLabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var btnCalender: UIButton!
    @IBOutlet weak var btnHospital: UIButton!
    @IBOutlet weak var btnClock: UIButton!
    @IBOutlet weak var expandButton: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var stackView: UIStackView!

    // MARK: - Awake form nib
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: - Functions
    func showButton(show: Bool) {
        expandButton.isHidden = show
    }
    
}// End of class
