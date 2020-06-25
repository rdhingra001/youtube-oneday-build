//
//  Model.swift
//  youtube-onedaybuilds
//
//  Created by Ronit Dhingra on 5/26/20.
//  Copyright © 2020 Ronit Dhingra. All rights reserved.
//

import Foundation


protocol ModelDelegate {
    func videosFetched(_ videos:[Videos])
}

class Model {
    
    var delegate: ModelDelegate?
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URL Session object
        let session = URLSession.shared
        
        // Get a data task from the URL Session object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        
                        // Call the "videosFetched" method of the delegate
                        self.delegate?.videosFetched(response.items!)
                    }
                
                }
                
                dump(response)
                
            }
            catch {
                
            }

            
            
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
    
    
}
