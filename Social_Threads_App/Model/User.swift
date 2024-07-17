//
//  User.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 17/07/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
