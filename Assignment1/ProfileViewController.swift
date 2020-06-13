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
    
    // object connection from screen to code
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var coffeeSwitch: UISwitch!
    @IBOutlet weak var teaSwitch: UISwitch!
    @IBOutlet weak var smoothieSwitch: UISwitch!
    @IBOutlet weak var custLabel: UILabel!
    var custName: String?
    var labelCoffee = ""
    var labelTea = ""
    var labelSmoothie = ""
    var size = " medium selected"
    var finalLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        custLabel.text = self.custName
        
        coffeeSwitch.isOn = false
        teaSwitch.isOn = false
        smoothieSwitch.isOn = false
        
    }
    
    @IBAction func switchAction(_ sender: UISlider) {
        slider.value = roundf(slider.value)
        if slider.value == 1 {
            size = " medium selected"
        } else {
            size = " large selected"
        }
    }
    
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func coffeeAction(_ sender: UISwitch) {
        if sender.isOn
        {
            labelCoffee = "coffee selected,"
        } else {
            labelCoffee = "coffee not selected,"
        }
    }
    
    @IBAction func teaAction(_ sender: UISwitch) {
        if sender.isOn{
            labelTea = " tea selected,"
        } else {
            labelTea = " tea not selected"
        }
    }
    
    @IBAction func smoothieAtn(_ sender: UISwitch) {
        if sender.isOn{
            labelSmoothie = " smoothie selected,"
        } else {
            labelSmoothie = " smoothie not selected,"
        }
    }
    
    @IBAction func confirmOrder(_ sender: Any) {
        performSegue(withIdentifier: "confirm", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let viewCtrl = segue.destination as! ProfileViewController2
        if labelCoffee == "" && labelTea == "" && labelSmoothie == "" {
            finalLabel = "Please select any beverage"
        } else {
            finalLabel = "\(labelCoffee)\(labelTea)\(labelSmoothie)\(size)"
        }
        viewCtrl.label = self.finalLabel
    }
}
