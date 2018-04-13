//
//  ViewController.swift
//  HWQCyclePicture
//
//  Created by hwq on 2018/4/12.
//  Copyright © 2018年 hwq. All rights reserved.
//

import UIKit

class ViewController: UIViewController, hwqCyclePictureDelegate {
    func cycleSelectedItemAtIndex(index: Int) {
        print("your choose is \(index)")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let images = ["cycle1", "cycle2", "cycle3", "cycle4"]
        
        let cyclePicture = HWQCyclePicture(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 200))
        cyclePicture.imageURLStringArray = images
        cyclePicture.delegate = self
        cyclePicture.imageIsLocationOrHttp = imageSource.location
        
        self.view.addSubview(cyclePicture)
    }

    
}
