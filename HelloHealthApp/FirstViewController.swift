//
//  FirstViewController.swift
//  HelloHealthApp
//
//  Created by Big Tasty on 12/19/18.
//  Copyright © 2018 Big Tasty. All rights reserved.
//

import UIKit

// Global variable that lets us know if user wants to share data
var globalShareData = false

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Create a key that allows us to track display once status
    let DISPLAY_ONCE = "DisplayOnce"
    let SHARE_DATA = "ShareData"
    
    override func viewDidAppear(_ animated: Bool) {
        // Do this only the first time app starts up
        if UserDefaults.standard.bool(forKey: DISPLAY_ONCE) == false {
            let msg = "Do you want to help us improve..."
            let vc = UIAlertController(title: "Improve Health & Activity", message: msg, preferredStyle: .alert)
            vc.addAction(UIAlertAction(title: "Allow", style: .default, handler: { (alert) in
                print("allows")
                UserDefaults.standard.set(true, forKey: self.DISPLAY_ONCE)
                UserDefaults.standard.set(true, forKey: self.SHARE_DATA)
                globalShareData = true
            }))
            vc.addAction(UIAlertAction(title: "Don't Allow", style: .default, handler: { (alert) in
                print("allows")
                UserDefaults.standard.set(true, forKey: self.DISPLAY_ONCE)
                UserDefaults.standard.set(false, forKey: self.SHARE_DATA)
            }))
            vc.addAction(UIAlertAction(title: "Learn More...", style: .default, handler: { (alert) in
                print("allows")
            }))
            present(vc, animated: true, completion: nil)
        }
        else {
            globalShareData = UserDefaults.standard.bool(forKey: SHARE_DATA)
        }
        
        
    }


}

