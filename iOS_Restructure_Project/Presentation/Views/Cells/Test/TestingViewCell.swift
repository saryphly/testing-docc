//
//  TestingViewCell.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

class TestingViewCell: BaseTableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func config(name: String) {
        nameLabel.text = name
    }
}
