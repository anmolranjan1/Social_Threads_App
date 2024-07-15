//
//  RegistrationViewModel.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 15/07/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws{
        try await AuthService.shared.createUser(
            with: email,
            password: password,
            fullName: fullname,
            userName: username
        )
    }
}

