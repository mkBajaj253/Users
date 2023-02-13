//
//  UsersChallengeApp.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import SwiftUI

@main
struct UsersChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            UserChallengeMainView(viewModel: UserListViewModel(repository:  GetUsersRepositoryImplementation(networkManager: NetworkManger())))
            
        }
    }
}
