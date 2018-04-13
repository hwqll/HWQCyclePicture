//
//  HWQViewController.swift
//  HWQCyclePicture
//
//  Created by hwq on 2018/4/10.
//  Copyright © 2018年 hwq. All rights reserved.
//

import UIKit

class HWQViewController: UIViewController, hwqCyclePictureDelegate {
    
    @IBOutlet var tableView : UITableView! {
        didSet {
          //  tableView.contentInsetAdjustmentBehavior = .never
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = ["cycle1", "cycle2", "cycle3", "cycle4"]

        let cyclePicture = HWQCyclePicture(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 200))
        cyclePicture.imageURLStringArray = images
        cyclePicture.delegate = self
        cyclePicture.imageIsLocationOrHttp = imageSource.location
        
        self.tableView.tableHeaderView = cyclePicture
        
        self.tableView.tableFooterView = UIView()
    }

    func cycleSelectedItemAtIndex(index: Int) {
        print("your choose item : \(index)")
    }

}
