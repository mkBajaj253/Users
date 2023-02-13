//
//  ContentView.swift
//  UsersChallenge
//
//  Created by Adam Khan on 07/02/2023.
//

import SwiftUI

struct UserChallengeMainView: View {
    
    @StateObject var viewModel: UserListViewModel
    
    var body: some View {
        NavigationStack {
            VStack{
                if (viewModel.error != nil) {
                    Text(viewModel.error?.localizedDescription ?? "There was an error")
                }
                else {
                    List {
                        ForEach(viewModel.users, id: \.self) { user in
                            NavigationLink{UserDetailsPageView(user: user)} label: {
                                TableCell(user: user)
                            }
                        }
                    }
                }
            }.task {
                await viewModel.getDataForUsers(urlString: APIEndPoints.shared.UsersEndPointString)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserChallengeMainView(viewModel: UserListViewModel(repository:  GetUsersRepositoryImplementation(networkManager: NetworkManger())))
    }
}
