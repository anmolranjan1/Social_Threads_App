//
//  ThreadsTextFieldModifier.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 07/07/24.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
