//
//  UIViewController+Extensions.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

extension UIViewController {
    
    static func instantiate(storyboard: EStoryboard) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self))
    }
    
    func replaceRootView(for viewController: UIViewController,
                         duration: TimeInterval = 0.5,
                         options: UIView.AnimationOptions = .transitionCrossDissolve,
                         completion: ((Bool) -> Void)? = nil) {
        guard let window = UIApplication.shared.keyWindow else {
            return
        }
        
        guard let rootViewController = window.rootViewController else {
            return
        }
        
        viewController.view.frame = rootViewController.view.frame
        
        UIView.transition(with: window, duration: duration, options: options, animations: {
            window.rootViewController = viewController
        }, completion: completion)
    }
}

// - MARK: Swizzle Method for print current class name
extension UIViewController {
    
    static func swizzleViewDidLoad() {
        let originalSelector = #selector(UIViewController.viewDidLoad)
        let swizzledSelector = #selector(UIViewController.swizzled_viewDidLoad)
        
        guard let originalMethod = class_getInstanceMethod(UIViewController.self, originalSelector),
              let swizzledMethod = class_getInstanceMethod(UIViewController.self, swizzledSelector) else {
            return
        }
        
        method_exchangeImplementations(originalMethod, swizzledMethod)
    }
    
    @objc private func swizzled_viewDidLoad() {
        print("👉👉 \(type(of: self))")
        self.swizzled_viewDidLoad()
    }
}
