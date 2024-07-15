//
//  ContentView.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 07/07/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
