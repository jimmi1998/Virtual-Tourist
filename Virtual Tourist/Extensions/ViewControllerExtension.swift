//
//  ViewControllerExtension.swift
//  UdacityVirtualTourist
//
//  Created by Jimit Raval on 24/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation

import Foundation
import UIKit

extension UIViewController {

    func showAlert(title: String, description: String?, style: UIAlertController.Style, actions: [UIAlertAction], viewController: UIViewController?, selfClose: Bool? = false){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: description, preferredStyle: style)
            if actions.count == 0 {
                let closeAction = UIAlertAction(title: "Close", style: .default, handler: nil)
                alert.addAction(closeAction)
            } else {
                for action in actions {
                    alert.addAction(action)
                }
            }
            self.present(alert, animated: true) {
                if selfClose! {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
    }
}
