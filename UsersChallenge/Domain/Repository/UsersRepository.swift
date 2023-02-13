//
//  GetPeopleRepository.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

protocol UsersRepository {
    func getUsers(for url: URL) async throws -> UserResponse
}
