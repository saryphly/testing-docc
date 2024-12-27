//
//  LoadingViewController.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit
import SnapKit
import NVActivityIndicatorView

class LoadingViewController: UIViewController {
    
    private lazy var indicatorView: NVActivityIndicatorView = {
        let view = NVActivityIndicatorView(
            frame: CGRect(origin: .zero, size: CGSize(width: 35, height: 35)),
            type: .circleStrokeSpin,
            color: .green
        )
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        self.view.backgroundColor = .clear
        self.view.addSubview(indicatorView)
        indicatorView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    func startLoading() {
        indicatorView.startAnimating()
    }
    
    func stopLoading() {
        if indicatorView.isAnimating {
            indicatorView.stopAnimating()
        }
    }
}
