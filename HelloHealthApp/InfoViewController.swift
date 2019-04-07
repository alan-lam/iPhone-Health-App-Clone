//
//  InfoViewController.swift
//  HelloHealthApp
//
//  Created by Big Tasty on 12/19/18.
//  Copyright © 2018 Big Tasty. All rights reserved.
//

import UIKit
import WebKit

class InfoViewController: UIViewController {

    @IBAction func doDone(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var myWebKit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load content into web view
        let url = Bundle.main.url(forResource: "info", withExtension: "html")
        myWebKit.loadFileURL(url!, allowingReadAccessTo: url!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
