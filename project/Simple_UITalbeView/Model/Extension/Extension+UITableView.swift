//
//  Extension+UITableView.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

extension UITableView {
    func registerXib(name: String) {
        let operatorCell = UINib(nibName: name, bundle: nil)
        self.register(operatorCell, forCellReuseIdentifier: name)
    }
}
