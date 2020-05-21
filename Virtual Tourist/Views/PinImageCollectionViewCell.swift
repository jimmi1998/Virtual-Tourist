//
//  PinImageCollectionViewCell.swift
//  UdacityVirtualTourist
//
//  Created by Jimit Raval on 24/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation
import UIKit

class PinImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.isHidden = true;
        activityIndicator.isHidden = false
    }
    
    func setupView(photo: Photo) {
        FlickrDataProvider.shared.downloadPhoto(photo: photo) { (data) in
            if data == nil {
                return
            }
            DispatchQueue.main.async {
                if let image = UIImage(data: data!){
                    self.imageView.image = image
                }
                self.imageView.isHidden = false;
                self.activityIndicator.isHidden = true
            }
        }
    }
    
    func setupView(image: UIImage) {
        DispatchQueue.main.async {
            self.imageView.image = image
            self.imageView.isHidden = false;
            self.activityIndicator.isHidden = true
        }
    }
}
