//
//  ViewController.swift
//  AppForDeviceCachingTest
//
//  Created by Daniel Paulus on 07.12.17.
//  Copyright © 2017 SauceLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeLabelInMemory(_ sender: Any) {
        appResetIndicatorLabel.text = "this change will be gone after app restart"
        
    }
    @IBOutlet weak var appResetIndicatorLabel: UILabel!
    @IBOutlet weak var persistenceIndicatorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        persistenceIndicatorLabel.text = "this app is started for the first time"
        if let nameFromStorage = UserDefaults.standard.string(forKey: "persistent_saucelabs_key"){
            persistenceIndicatorLabel.text = nameFromStorage
        }
        
        UserDefaults.standard.set("this app not started for the first time", forKey: "persistent_saucelabs_key")
        
        
        
        appResetIndicatorLabel.text = "app has been restarted"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

