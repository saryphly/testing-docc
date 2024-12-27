//
//  HomeViewRouter.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 20/12/24.
//

import UIKit

enum EHomeScreenRouter {
    case featureOne
}

protocol HomeScreenRouterProtocol {
    func perform(_ segue: EHomeScreenRouter, from source: HomeViewController)
}

class HomeViewRouter: HomeScreenRouterProtocol {
    
    func perform(_ segue: EHomeScreenRouter, from source: HomeViewController) {
        switch segue {
        case .featureOne:
            let vc = FeatureOneViewController.instantiate(storyboard: .featureOne)
            source.navigationController?.navigateTo(vc)
            break
        }
    }
}
