//
//  FollowersListVC.swift
//  GHFollowers
//
//  Created by Daniel Rodrigues on 24/05/25.
//

import UIKit

class FollowersListVC: UIViewController {

    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
