//
//  SettingsViewController.swift
//  RPSApp
//
//  Created by muslim on 03.01.2021.
//  Copyright © 2021 RADEFFFACTORY. All rights reserved.
//

import UIKit



class SettingsViewController: ViewController {
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reset"), object: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


    }
    
   
}
