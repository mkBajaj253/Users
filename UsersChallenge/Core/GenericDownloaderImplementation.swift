//
//  GenericDownloaderImplementation.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

internal class GenericDataManager: GenericDownloader {
    var genericDownloader: Networkable
    
    init(genericDownloader: Networkable) {
        self.genericDownloader = genericDownloader
    }
    
    func getDataAsynchronously<T: Decodable>(for url: URL, type: T.Type) async throws -> T {
        let data = try await self.genericDownloader.getDataFromAPI(url: url)
        let decodedData = try JSONDecoder().decode(T.self, from: data)
        return decodedData
    }
}
