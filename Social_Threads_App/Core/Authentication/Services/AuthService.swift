//
//  AuthService.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 15/07/24.
//

import Firebase

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(with email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("User Created \(result.user.uid)")
        } catch {
            print("Failed to create user with \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(with email: String, password: String, fullName: String, userName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("User Created \(result.user.uid)")
        } catch {
            print("Failed to create user with \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut() // signOut from backend
        self.userSession = nil // removes session locally and updates routing
    }
}
