//
//  Extension+UIView.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/10.
//

import UIKit

extension UIActivityIndicatorView {
    func show() {
        self.isHidden = false
        self.startAnimating()
    }
    
    func dismiss() {
        self.isHidden = true
        self.stopAnimating()
    }
}
