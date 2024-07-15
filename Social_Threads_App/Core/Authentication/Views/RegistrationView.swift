//
//  RegistrationView.swift
//  Social_Threads_App
//
//  Created by Anmol Ranjan on 07/07/24.
//

import SwiftUI

struct RegistrationView: View {
    @State var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "person.line.dotted.person.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your fullname", text: $viewModel.fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $viewModel.username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("SignUp")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already Have an Account?")
                        .foregroundColor(.black)
                    Text("Login")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
