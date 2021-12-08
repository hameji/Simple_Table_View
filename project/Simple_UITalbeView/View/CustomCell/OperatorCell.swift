//
//  OperatorCell.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/07.
//

import UIKit

class OperatorCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bind(data: Operator) {
        nameLabel.text = data.name
        if data.swiftCompatible {
            nameLabel.textColor = .black
            accessoryType = .disclosureIndicator
        } else {
            nameLabel.textColor = .gray
            accessoryType = .none
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
