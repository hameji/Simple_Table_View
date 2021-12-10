//
//  Extension+UIButton.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/09.
//

import UIKit

extension UIButton {
    func fillStyle(color: UIColor) {
        self.layer.cornerRadius = 5
        self.backgroundColor = color
        self.setTitleColor(.white, for: .normal)
    }

    func noFrameStyle(color: UIColor) {
        self.setTitleColor(color, for: .normal)
    }

    func frameStyle(color: UIColor) {
//        self.bounds.size.width = self.bounds.size.width * 1.2 // 効いてない
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = color.cgColor
        self.setTitleColor(color, for: .normal)
    }
    
    func setSize(width: CGFloat, multiplier: CGFloat) {
        self.sizeToFit()
        let beforeCenter = self.center
        var buttonWidth = width * multiplier
        if self.frame.width > buttonWidth {
            buttonWidth = self.frame.width + 80
        }
        self.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: self.frame.height * 1.5)
        self.center = beforeCenter
    }
}

