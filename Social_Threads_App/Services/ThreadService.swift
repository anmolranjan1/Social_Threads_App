//
//  ThreadService.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 17/08/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct ThreadService {
    
    static func uploadThread(_ thread: Thread) async throws {
        guard let threadData = try? Firestore.Encoder().encode(thread) else {return}
        try await Firestore.firestore().collection("threads").addDocument(data: threadData)
    }
}
