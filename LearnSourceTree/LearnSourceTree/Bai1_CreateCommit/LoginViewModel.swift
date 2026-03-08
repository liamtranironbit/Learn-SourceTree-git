//
//  LoginViewModel.swift
//  LearnSourceTree
//
//  Created by Trần Chí Thiện on 9/3/26.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String?
    
    func login() async {
        
        let request = LoginRequest(
            email: email,
            password: password
        )
        
        do {
            let response = try await AuthService.shared.login(request: request)
            print("Login success:", response.user.name)
            
        } catch {
            errorMessage = "Login failed"
        }
    }
}
