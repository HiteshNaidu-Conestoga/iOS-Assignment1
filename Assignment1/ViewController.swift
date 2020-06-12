//
//  ViewController.swift
//  Assignment1
//
//  Created by user173205 on 6/10/20.
//  Copyright © 2020 user173205. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var custName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func proceedBtn(_ sender: Any) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let myTabBarController = segue.destination as? TabBarViewController{
            
            myTabBarController.myname = custName.text
        }
    }
}

