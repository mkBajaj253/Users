//
//  UserListViewModelTests.swift
//  UsersChallengeTests
//
//  Created by Adam Khan on 09/02/2023.
//

import XCTest
@testable import UsersChallenge

final class UserListViewModelTests: XCTestCase {

    private var viewModel: UserListViewModel = UserListViewModel(repository: GetUsersRepositoryImplementation(networkManager: NetworkManger()))
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInvalidURL() async {
        /// Given an invalid URL
        let invalidURLString: String = ""
        await viewModel.getDataForUsers(urlString: invalidURLString)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            XCTAssertEqual(self.viewModel.error, NetworkError.invalidURL)
        }
    }
    
    func testGetDataForUsers() async {
        await viewModel.getDataForUsers(urlString: APIEndPoints.shared.UsersEndPointString)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            XCTAssertEqual(self.viewModel.users.count, 6)
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
