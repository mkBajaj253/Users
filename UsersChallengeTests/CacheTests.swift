//
//  CacheTests.swift
//  UsersChallengeTests
//
//  Created by Adam Khan on 09/02/2023.
//

import XCTest
@testable import UsersChallenge

final class PhotoModelCacheManagerTest: XCTestCase {

    private let instance = ImageCacheManagerRepositoryImplementation.instance
    
    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    
    }
    
    func testGetPhoto() {
        let image = UIImage(systemName: "face.smiling")
        instance.addImage(key: "SomeKey", value: image ?? UIImage())
        XCTAssertEqual(image, instance.getImage(key: "SomeKey"))
    }
    
    func testAddPhoto() {
        instance.photoCache.removeAllObjects()
        XCTAssertNil(instance.photoCache.object(forKey: "SomeKey"))
        let image = UIImage(systemName: "face.smiling")
        
        instance.addImage(key: "SomeKey", value: image ?? UIImage())
        XCTAssertNotNil(instance.getImage(key: "SomeKey"))
    }
    
    
}
