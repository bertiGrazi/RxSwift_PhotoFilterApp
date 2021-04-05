//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Grazi Berti on 25/03/21.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var applyFilterButton: UIButton!
    @IBOutlet weak var photoImageView: UIImageView!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navC = segue.destination as? UINavigationController,
              let photosCVC = navC.viewControllers.first as? PhotosCollectionViewController
                else {
                    fatalError("Segue destination is not found")
                }
        
        photosCVC.selectPhoto.subscribe(onNext: { [weak self] photo in
            DispatchQueue.main.async {
                self?.updateUI(with: photo)
            }
            self?.photoImageView.image = photo
        }).disposed(by: disposeBag)
    }
    
    @IBAction func applyFilterButton(_ sender: Any) {
        guard let sourceImage = self.photoImageView.image else { return }
        
        FilterService().applyFilter(to: sourceImage).subscribe(onNext: { filterImage in
            DispatchQueue.main.async {
                self.photoImageView.image = filterImage
            }
        }).disposed(by: disposeBag)
    }
    
    private func updateUI(with image: UIImage) {
        self.photoImageView.image = image
        self.applyFilterButton.isHidden = false
    }
}

