//
//  UserListViewModel.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation


internal class UserListViewModel: ObservableObject {
    
    @Published var users: [user] = []
    @Published var error: NetworkError?
    
    let repository: UsersRepository
    
    init(repository: UsersRepository) {
        self.repository = repository
    }
    
    func getDataForUsers(urlString: String) async {
        guard let url = URL(string: urlString) else{
            DispatchQueue.main.async {
                self.error = .invalidURL
            }
            return
        }
        do {
            let userData = try await repository.getUsers(for: url)
            DispatchQueue.main.async {
                self.users = userData.data
            }
        }catch let capturedError {
            error = capturedError as? NetworkError
        }
    }
    
}
