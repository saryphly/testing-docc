//
//  Launcher.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

class Launcher {
    
    static func start(window: UIWindow?) {
        let vc = LaunchScreenViewController.instantiate(storyboard: .main)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}
