//
//  BaseTableView.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

class BaseTableView: UITableView {
    
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }
    
    override var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
    }
}
