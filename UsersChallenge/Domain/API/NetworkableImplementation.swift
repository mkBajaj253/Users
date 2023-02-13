//
//  NetworkableImplementation.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

internal class NetworkManger: Networkable {
    
    func getDataFromAPI(url: URL) async throws -> Data {
        do{
           let (data,_)  = try await URLSession.shared.data(from: url)
            return data
        }catch{
            throw NetworkError.dataNotFound
        }
    }
}
