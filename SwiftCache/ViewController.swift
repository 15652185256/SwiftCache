//
//  ViewController.swift
//  SwiftCache
//
//  Created by 赵晓东 on 16/6/8.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label_Cache: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print(NSHomeDirectory())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func readCache(sender: AnyObject) {
        self.Label_Cache.text = XCache.returnCacheSize() + " MB"
    }

    @IBAction func cleanCahce(sender: AnyObject) {
        XCache.cleanCache()
    }
}

