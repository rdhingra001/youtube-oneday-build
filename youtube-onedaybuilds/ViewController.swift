//
//  ViewController.swift
//  youtube-onedaybuilds
//
//  Created by Ronit Dhingra on 5/20/20.
//  Copyright © 2020 Ronit Dhingra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        model.getVideos()
    }


}

