//
//  OnbordingViewController.swift
//  CustomClass
//
//  Created by Yagnik Bavishi on 04/05/22.
//

import UIKit

class OnbordingViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var collctionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnNext: UIButton!
    
    // MARK: - Variables
    var coordinator: OnBoardingCoordinator?
    let reuseIdentifier = "cell"
    let pages: [Page] = [Page(title: "Find a doctor near you", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                         Page(title: "Find a doctor near you2", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. orem ipsum dolor sit amet, consectetur adipiscing elit."),
                         Page(title: "Find a doctor near you3", subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. orem ipsum dolor sit amet, consectetur adipiscing elit.")]
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        collctionView.dataSource = self
        self.pageControl.numberOfPages = self.pages.count
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    // MARK: - Actions
    @IBAction func pageControlAction(_ sender: UIPageControl) {
        let pageControl = sender
        collctionView.scrollToItem(at: IndexPath(item: pageControl.currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    @IBAction func goToLoginPage(_ sender: Any) {
        coordinator?.goLoginVC()
    }
    
}// End of class

//MARK: - UICollectionViewDelegateFlowLayout
extension OnbordingViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                         sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.height)
     }
    
}// End of extension

// MARK: - UICollectionViewDataSource
extension OnbordingViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as? OnbordingCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.imgOnbordingImage?.image = UIImage(named: "OnboardingImage")
        cell.configureCell(page: pages[indexPath.row])
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
}// End of Extension
