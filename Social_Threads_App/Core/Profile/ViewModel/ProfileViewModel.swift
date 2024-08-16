//
//  ProfileView.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 16/08/24.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("Debug: Current user from combine is \(user)")
        }.store(in: &cancellables)
    }
}
