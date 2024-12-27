//
//  BaseViewController.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

/// Base ViewController for manage whole project UIViewController
/// - Easy to handle change that we want to effect whole project
class BaseViewController: UIViewController {
    
    private var loadingVC: LoadingViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.shouldLoad()
        }
    }
    
    /// Delay 0.5 after ViewDidLoad being called.
    func shouldLoad() {}
}

// - MARK: Loading
/// Loading Functionality For whole project usage.
extension BaseViewController {
    
    /// Using StartLoading to start indicator
    func startLoading() {
        loadingVC = LoadingViewController()
        loadingVC.modalPresentationStyle = .overCurrentContext
        loadingVC.modalTransitionStyle = .crossDissolve
        UIApplication.topViewController()?.present(loadingVC, animated: false) {
            self.loadingVC?.startLoading()
        }
    }
    
    /// Using StopLoading to stop indicator
    func stopLoading() {
        UIApplication.topViewController()?.dismiss(animated: false) {
            if let loadingVC = self.loadingVC {
                loadingVC.stopLoading()
            }
        }
    }
}
