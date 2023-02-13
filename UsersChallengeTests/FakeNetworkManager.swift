//
//  FakeNetworkManager.swift
//  UsersChallengeTests
//
//  Created by Adam Khan on 12/02/2023.
//

import Foundation
@testable import UsersChallenge

internal class FakeNetworkManager: Networkable {
    func getDataFromAPI(url: URL) async throws -> Data {
        do {
            let data = try Data(contentsOf: url)
            return data
        }
        catch {
            throw NetworkError.dataNotFound
        }
    }
}

/**
 func getDataFromAPI(url: URL) async throws -> Data {
     do{
        let (data,_)  = try await URLSession.shared.data(from: url)
         return data
     }catch{
         throw NetworkError.dataNotFound
     }
 }
 */
