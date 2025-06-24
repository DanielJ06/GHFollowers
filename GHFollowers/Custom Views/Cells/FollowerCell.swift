//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Daniel Rodrigues on 28/05/25.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseId = "FollowersCell"
    
    let avatarImage = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    func handleFollower(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configure() {
        addSubview(avatarImage)
        addSubview(usernameLabel)
        
        let cellPadding = CGFloat(8)
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: topAnchor, constant: cellPadding),
            avatarImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: cellPadding),
            avatarImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -cellPadding),
            avatarImage.heightAnchor.constraint(equalTo: avatarImage.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: cellPadding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -cellPadding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
