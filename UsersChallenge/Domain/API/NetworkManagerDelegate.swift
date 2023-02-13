//
//  NetworkManagerDelegate.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import Foundation

protocol NetworkMangerDelegate{
    func didFinishLoadingData(data:Data) async -> Void
    func didFinishWithError(error:Error) async -> Void
}
