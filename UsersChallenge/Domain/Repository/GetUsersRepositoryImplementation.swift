//
//  GetUsersRepositoryImplementation.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

internal final class GetUsersRepositoryImplementation: UsersRepository {
    
    let networkManager: Networkable
    
    init(networkManager: Networkable) {
        self.networkManager = networkManager
    }
    
    func getUsers(for url: URL) async throws -> UserResponse {
        let genericDataManager = GenericDataManager(genericDownloader: self.networkManager)
        let returnedData = try await genericDataManager.getDataAsynchronously(for: url, type: UserResponse.self)
        return returnedData
    }
}
