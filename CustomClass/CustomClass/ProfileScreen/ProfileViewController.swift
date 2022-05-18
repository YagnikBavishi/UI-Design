//
//  ProfileViewController.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 05/05/22.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var selectedIndex = -1
    var isCollapse = false
    var coordinator: ProfileCoordinator?

    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: - File Private Functions
    fileprivate func initialSetUp() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 300
        tableView.rowHeight = UITableView.automaticDimension
    }

    @IBAction func goBack(_ sender: Any) {
        coordinator?.goback()
    }
    
}// End of class

//MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else {
            return UITableViewCell()
        }
        cell.imgProfile.image = UIImage(named: "DoctorPhoto")
        cell.lblDoctorName.text = "Dr. Adam Jordan "
        cell.lblDoctorSpecialist.text = "Dentis Specialist"
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let verticalPadding: CGFloat = 10
        let maskLayer = CALayer()
        maskLayer.cornerRadius = 10
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        cell.layer.mask = maskLayer
    }
    
}// End of Extension

//MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let cell = tableView.cellForRow(at: indexPath) as? TableViewCell {
            if selectedIndex == indexPath.row && isCollapse == true {
                cell.showButton(show: false)
                return 235
            } else if(selectedIndex == indexPath.row && isCollapse == false) {
                cell.showButton(show: true)
                return 149
            }
        }
        return 149
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedIndex == indexPath.row {
            isCollapse = !isCollapse
        }
        selectedIndex = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }

}// End of Extension
