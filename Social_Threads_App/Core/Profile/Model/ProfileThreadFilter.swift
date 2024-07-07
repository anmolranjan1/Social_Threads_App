//
//  ProfileThreadFilter.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 08/07/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    case likes
    
    var title: String {
        switch self {
            case .threads: return "Threads"
            case .replies: return "Replies"
            case .likes: return "Likes"
        }
    }
    
    var id: Int { return self.rawValue }
}
