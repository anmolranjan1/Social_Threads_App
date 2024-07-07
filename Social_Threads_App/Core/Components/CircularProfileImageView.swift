//
//  CircularProfileImageView.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 08/07/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
