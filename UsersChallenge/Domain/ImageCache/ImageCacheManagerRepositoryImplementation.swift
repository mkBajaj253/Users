//
//  ImageCacheManagerRepositoryImplementation.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI

/// Creates a singleton instance to cache images
class ImageCacheManagerRepositoryImplementation: ImageCacheManagerRepository {
    /// Singleton design
    static let instance = ImageCacheManagerRepositoryImplementation()
    private init() {}
    /// Image cache
    var photoCache: NSCache<NSString, UIImage> = {
        var cache = NSCache<NSString, UIImage>()
        cache.countLimit = 50
        /// Roughly 100mb
        cache.totalCostLimit = 1024*1024*200
        return cache
    }()
    /// Add image to cache
    func addImage(key:String, value: UIImage) {
        photoCache.setObject(value, forKey: key as NSString)
    }
    /// Get image from cache
    func getImage(key: String) -> UIImage? {
        photoCache.object(forKey: key as NSString)
    }
}
