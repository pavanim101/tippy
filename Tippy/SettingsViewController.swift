//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Pavani Malli on 6/20/17.
//  Copyright © 2017 Pavani Malli. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipValue: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func defaultTipChoice(_ sender: Any) {
        
       //let tipPercentages = [0.18, 0.2, 0.25]
        
        let defaults = UserDefaults.standard
        
        defaults.set(tipValue.selectedSegmentIndex, forKey: "default_tip_index")
       
        defaults.synchronize()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
