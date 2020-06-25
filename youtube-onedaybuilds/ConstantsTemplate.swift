//
//  ConstantsTemplate.swift
//  youtube-onedaybuilds
//
//  Created by Ronit Dhingra on 6/24/20.
//  Copyright © 2020 Ronit Dhingra. All rights reserved.
//

/*
Feel free to uncomment the code below and fill in the given blanks.
*/

import Foundation


struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
}



