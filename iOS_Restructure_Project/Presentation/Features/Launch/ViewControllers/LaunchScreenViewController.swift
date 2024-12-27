//
//  LaunchScreenViewController.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

class LaunchScreenViewController: BaseViewController {

    let laucher = LaunchScreenRouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }

    private func setUpUI() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.laucher.perform(.home("test_01"), from: self)
        }
    }
}
