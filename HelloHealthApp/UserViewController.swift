//
//  UserViewController.swift
//  HelloHealthApp
//
//  Created by Big Tasty on 12/19/18.
//  Copyright © 2018 Big Tasty. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBAction func doClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doEdit(_ sender: Any) {
        let vc = UIAlertController(title: "TODO", message: "Enter Edit Mode", preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func doExportHealthData(_ sender: Any) {
        let msg = "Are you sure you want to export your health data? This may take a few moments"
        let vc = UIAlertController(title: "Export Health Data", message: msg, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        vc.addAction(UIAlertAction(title: "Export", style: .default, handler: { (alert) in
            print("TODO - Export Data")
        }))
        present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
