//
//  UsersModel.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

// MARK: - UserResponse
internal struct UserResponse: Decodable {
    let page, perPage, total, totalPages: Int
    let data: [user]
    let support: Support

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
}

// MARK: - Datum
internal struct user: Decodable, Hashable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
