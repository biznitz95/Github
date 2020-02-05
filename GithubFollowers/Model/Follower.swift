//
//  Follower.swift
//  GithubFollowers
//
//  Created by Bizet Rodriguez-Velez on 1/10/20.
//  Copyright © 2020 Cognoa. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
