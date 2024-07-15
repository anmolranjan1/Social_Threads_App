//
//  ContentViewModel.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 15/07/24.
//

import Foundation
import Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubcribers()
    }
    
    private func setupSubcribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
