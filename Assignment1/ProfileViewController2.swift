//
//  ProfileViewController2.swift
//  Assignment1
//
//  Created by user174122 on 6/11/20.
//  Copyright © 2020 user173205. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController2 : UIViewController {
    var label = ""
    
//    @IBOutlet weak var testLabel: UILabel!
//    @IBOutlet weak var myOrderDetail: UILabel!
    @IBOutlet weak var orderDetails: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderDetails.text = self.label
    }
    
    // connection for logout button
    @IBAction func logout(_ sender: Any) {
        // redirection to first screen
        dismiss(animated: true, completion: nil)
    }
}
