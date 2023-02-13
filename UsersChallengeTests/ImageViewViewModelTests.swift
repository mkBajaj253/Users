//
//  ImageViewViewModelTests.swift
//  UsersChallengeTests
//
//  Created by Adam Khan on 09/02/2023.
//

import XCTest
@testable import UsersChallenge

final class ImageViewViewModelTests: XCTestCase {

    private var viewModel: ImageViewViewModel = ImageViewViewModel("", id: "")
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDownloadImageThrowsError() throws {
        viewModel.downloadImage("")
        XCTAssertEqual(true, viewModel.error)
    }
    
    func testImageCanBeDownloaded() {
        viewModel.image = nil
        viewModel.downloadImage("https://reqres.in/img/faces/2-image.jpg")
        XCTAssertNotNil(viewModel.image)
    }
    
    func testCacheOptionallity() {
        let person = user(id: 654, email: "BigE-Mail", firstName: "Small Guy", lastName: "Big Guy", avatar: "https://reqres.in/img/faces/2-image.jpg")
        viewModel.image = nil
        viewModel.imageID = "\(person.id)"
        viewModel.imageURL = person.avatar
        viewModel.downloadImage(person.avatar)
        viewModel.image = nil
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
