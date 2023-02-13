//
//  ImageCacheManagerCacheRepository.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI

protocol ImageCacheManagerRepository {
    /// Make the cache
    var photoCache: NSCache<NSString, UIImage> {get set}
    /// Add image to cache
    func addImage(key:String, value: UIImage)
    /// Get image from cache
    func getImage(key: String) -> UIImage?
}
