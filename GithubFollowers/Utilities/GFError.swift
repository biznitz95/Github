//
//  ErrorMessage.swift
//  GithubFollowers
//
//  Created by Bizet Rodriguez-Velez on 1/12/20.
//  Copyright © 2020 Cognoa. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection."
    case invalidResponse    = "Invalid resposnse from server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
}
