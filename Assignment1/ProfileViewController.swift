//
//  ProfileViewController.swift
//  Assignment1
//
//  Created by user174122 on 6/11/20.
//  Copyright © 2020 user173205. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController : UIViewController {
    
    @IBOutlet weak var coffeeSwitch: UISwitch!
    @IBOutlet weak var teaSwitch: UISwitch!
    @IBOutlet weak var smoothieSwitch: UISwitch!
    @IBOutlet weak var custLabel: UILabel!
    var custName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        custLabel.text = self.custName
        
        coffeeSwitch.isOn = false
        teaSwitch.isOn = false
        smoothieSwitch.isOn = false
        
    }
    
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func coffeeAction(_ sender: UISwitch) {
        if sender.isOn
        {
            
        }
    }
    
    @IBAction func teaAction(_ sender: UISwitch) {
        if sender.isOn{
            
        }
    }
    
    @IBAction func smoothieAction(_ sender: UISwitch) {
        if sender.isOn{
            
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
         
    }
}
