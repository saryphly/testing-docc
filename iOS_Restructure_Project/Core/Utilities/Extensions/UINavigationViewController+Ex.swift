//
//  UINavigationViewController+Ex.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 20/12/24.
//

import UIKit

extension UINavigationController {
    
    func navigateTo(_ vc: UIViewController?, animated: Bool = true) {
        if let navigateToVC = vc {
            pushViewController(navigateToVC, animated: animated)
        } else {
            print("~~ No ViewController found! ~~")
        }
    }
}
