//
//  AuthService.swift
//  LearnSourceTree
//
//  Created by Trần Chí Thiện on 9/3/26.
//

class AuthService {
    
    static let shared = AuthService()
    
    func login(request: LoginRequest) async throws -> LoginResponse {
        
        // giả lập network delay
        try await Task.sleep(nanoseconds: 1_000_000_000)
        
        if request.email == "test@gmail.com" &&
           request.password == "123456" {
            
            let user = User(
                id: 1,
                name: "Test User",
                email: request.email
            )
            
            return LoginResponse(
                token: "fake_token_123",
                user: user
            )
            
        } else {
            throw LoginError.invalidCredential
        }
    }
}
