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
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { followers, errorMessage in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(
                    title: "Something went wrong",
                    message: errorMessage ?? "",
                    buttonTitle: "Ok"
                )
                return
            }
            
            print("Number of followers: \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
