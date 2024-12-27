//
//  UITableView+Extensions.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

extension UITableView {
    
    func registerCell<T: UITableViewCell>(ofType type: T.Type) {
        let cellIdentifier = String(describing: T.self)
        if Bundle.main.path(forResource: cellIdentifier, ofType: "nib") != nil {
            let nib = UINib(nibName: cellIdentifier, bundle: Bundle.main)
            register(nib, forCellReuseIdentifier: cellIdentifier)
        } else {
            register(T.self, forCellReuseIdentifier: cellIdentifier)
        }
    }
    
    func dequeueCell<T: UITableViewCell>(ofType type: T.Type, indexPath: IndexPath) -> T {
        let cellIdentifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! T
    }
}
