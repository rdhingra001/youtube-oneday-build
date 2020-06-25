//
//  CacheManager.swift
//  youtube-onedaybuilds
//
//  Created by Ronit Dhingra on 6/25/20.
//  Copyright © 2020 Ronit Dhingra. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        // Store the image data and use the url as the key
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        
        // Try to get the data for the specified URL
        return cache[url]
        
    }
}
