//
//  PreviewProvider.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 16/08/24.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Anmol Ranjan", email: "anmol@gmail.com", username: "anmol1")
    
    let thread = Thread(ownerUid: "123", caption: "Test Thread", timestamp: Timestamp(), likes: 0)
}
