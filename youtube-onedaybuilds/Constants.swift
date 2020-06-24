//
//  Constants.swift
//  youtube-onedaybuilds
//
//  Created by Ronit Dhingra on 5/26/20.
//  Copyright © 2020 Ronit Dhingra. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyBSZuCx1-nKl9dmLyjpydjVcTsh3GaHGZY"
    static var PLAYLIST_ID = "UUUgQaAXJYI45hV_V5dSJpoA"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
