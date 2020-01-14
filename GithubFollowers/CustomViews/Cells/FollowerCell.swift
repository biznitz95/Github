//
//  FollowerCell.swift
//  GithubFollowers
//
//  Created by Bizet Rodriguez-Velez on 1/13/20.
//  Copyright © 2020 Cognoa. All rights reserved.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(usernameLabel)
        
        let avatarPadding: CGFloat = 8
        let nameLabelPadding: CGFloat = 12
        
        // Constraints
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: avatarPadding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: avatarPadding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -avatarPadding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: nameLabelPadding),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: avatarPadding),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -avatarPadding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
