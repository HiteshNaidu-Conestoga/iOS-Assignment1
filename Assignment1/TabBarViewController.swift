//
//  TabBarViewController.swift
//  Assignment1
//
//  Created by user174122 on 6/11/20.
//  Copyright © 2020 user173205. All rights reserved.
//

import Foundation
import UIKit

class TabBarViewController : UITabBarController{
    
    // global variables for class TabBarViewController
    var myname: String?
    var mychoice : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fetching reference of all the viewControllers accessible through TabBarViewController
        guard let viewControllers = viewControllers else {
            return
        }
        
        // Iterating through all the viewController and passing customer name to profileViewController through NavigationController
        for viewController in viewControllers
        {
            if let profileNavigationController = viewController as? ProfileNavigationViewController{
                if let profileViewController = profileNavigationController.viewControllers.first as? ProfileViewController{
                    profileViewController.custName = self.myname
                }
            }
        }
    }
}
