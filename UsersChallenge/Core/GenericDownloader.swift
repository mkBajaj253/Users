//
//  GenericDownloader.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

protocol GenericDownloader {
    func getDataAsynchronously<T: Decodable>(for url: URL, type: T.Type) async throws -> T
}
