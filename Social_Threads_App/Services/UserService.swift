//
//  UserService.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 17/07/24.
//

import Firebase

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
    }
    
    static func fetchUsers() async throws -> [User] {
        guard let currentuid = Auth.auth().currentUser?.uid else {
            return []
        }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({ try? $0.data(as: User.self)})
        return users.filter({ $0.id != currentuid })
    }
    
    func reset() {
        self.currentUser = nil
    }
}
