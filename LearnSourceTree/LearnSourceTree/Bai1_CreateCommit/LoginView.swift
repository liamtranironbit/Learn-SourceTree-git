//
//  LoginView.swift
//  LearnSourceTree
//
//  Created by Trần Chí Thiện on 9/3/26.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            Text("Welcome Back")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Login to continue")
                .foregroundColor(.gray)
            
            VStack(spacing: 16) {
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Button(action: loginAction) {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Button("Register") {
                print("Register tapped")
            }
            .foregroundColor(.blue)
            
            Spacer()
        }
        .padding()
    }
    
    func loginAction() {
        print("Email:", email)
        print("Password:", password)
    }
}

#Preview {
    LoginView()
}
