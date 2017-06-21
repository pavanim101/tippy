//
//  ViewController.swift
//  Tippy
//
//  Created by Pavani Malli on 6/20/17.
//  Copyright © 2017 Pavani Malli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
  
    @IBOutlet weak var barView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
       self.blinkAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")

        
        let defaults = UserDefaults.standard
        let tipValueIndex = defaults.integer(forKey: "default_tip_index")
        tipControl.selectedSegmentIndex = tipValueIndex;
        self.calculateTip(0)
        
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        self.barView.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1)
        self.blinkAnimation()


    }
    


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    func blinkAnimation () {
        
        UIView.animate(withDuration: 1.0, delay: 0, options:[.repeat, .autoreverse], animations: {
            self.barView.backgroundColor = UIColor(red: 4/255, green: 135/255, blue: 255/255, alpha: 1)
        }, completion:nil)
        
    }
    
}

