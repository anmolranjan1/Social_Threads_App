//
//  LoginViewModel.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 15/07/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login (
            with: email,
            password: password
        )
    }
}
