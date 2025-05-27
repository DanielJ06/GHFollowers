//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Daniel Rodrigues on 27/05/25.
//

import Foundation

enum GFError: String, Error {
    case INVALID_USERNAME = "Invalid username"
    case UNABLE_TO_COMPLETE = "Unable to complete request"
    case INVALID_RESPONSE = "Invalid response received from server"
    case INVALID_DATA = "Invalid data received from server"
}
