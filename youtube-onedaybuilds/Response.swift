//
//  Response.swift
//  youtube-onedaybuilds
//
//  Created by Ronit Dhingra on 6/24/20.
//  Copyright © 2020 Ronit Dhingra. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items:[Videos]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
        
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Videos].self, forKey: .items)
    }
}
