//
//  LauchScreenRouter.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

enum ELauchScreenRouter {
    case home(String)
}

protocol LaunchScreenRouterProtocol {
    func perform(_ segue: ELauchScreenRouter, from source: LaunchScreenViewController)
}

class LaunchScreenRouter: LaunchScreenRouterProtocol {
    
    func perform(_ segue: ELauchScreenRouter, from source: LaunchScreenViewController) {
        switch segue {
        case .home:
            let vc = HomeViewController.instantiate(storyboard: .main)
            let nav = UINavigationController(rootViewController: vc)
            source.replaceRootView(for: nav)
            break
        }
    }
}
