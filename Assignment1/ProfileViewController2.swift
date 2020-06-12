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
    
    @IBOutlet weak var myOrderDetail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
