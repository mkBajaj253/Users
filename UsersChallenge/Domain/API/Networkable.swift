//
//  Networkable.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

protocol Networkable{
    func getDataFromAPI(url: URL) async throws -> Data
}
