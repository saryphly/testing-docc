//
//  HomeViewController.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 18/12/24.
//

import UIKit

/// The `HomeViewController` class is responsible for managing the home screen of the app.
///
/// This class provides the main interface for users to interact with the home screen.
/// It includes features like navigation and data display.
///
/// ## Topics
/// - ``viewDidLoad()``
///
/// ## Remarks
/// - This view controller is the entry point of the app.
/// - Ensure that the network layer is properly initialized before calling.
///
/// ## See Also
/// - ``FeatureOneViewController``
class HomeViewController: BaseViewController {
    
    @IBOutlet weak var tableView: BaseTableView!
    
    let homeRouter = HomeViewRouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        setUpUI()
    }

    private func setUpUI() {
        tableView.registerCell(ofType: TestingViewCell.self)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: TestingViewCell.self, indexPath: indexPath)
        cell.config(name: "Test: \(indexPath.row)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            homeRouter.perform(.featureOne, from: self)
        }
    }
}
