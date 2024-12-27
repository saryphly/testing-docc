//
//  UIView+Extensions.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

extension UIView {
    
    func startLoading() {
        if let topVC = UIApplication.topViewController() as? BaseViewController {
            topVC.startLoading()
        }
    }
    
    func stopLoading() {
        if let topVC = UIApplication.topViewController() as? BaseViewController {
            topVC.stopLoading()
        }
    }
}
