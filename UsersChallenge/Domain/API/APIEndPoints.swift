//
//  APIEndPoints.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

/// A static class containing the API endpoints to the Users API
internal final class APIEndPoints {
    
    static let shared: APIEndPoints = APIEndPoints()
    
    private init() {}
    
    /// String Property
    public let UsersEndPointString: String = "https://reqres.in/api/users"
    /// URL Property
    public let UsersEndPointURL: URL? = URL(string: "https://reqres.in/api/users")
    
    /// Added for ease of coding

    
    /// Used for subscript return cases
    enum ReturnType {case URL,String}
}
