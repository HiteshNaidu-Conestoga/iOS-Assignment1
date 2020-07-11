//
//  OrderListTableViewController.swift
//  Assignment1
//
//  Created by user173205 on 7/11/20.
//  Copyright © 2020 user173205. All rights reserved.
//

import UIKit

class OrderListTableViewController: UITableViewController {

    @IBAction func logout(_ sender: Any) {
        // redirection to first screen
        dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
}
