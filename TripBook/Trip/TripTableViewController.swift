//
//  TripTableViewController.swift
//  TripBook
//
//  Created by Viktor on 31.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class TripTableViewController: UITableViewController {
    
    let cellID = "eventCell"
    var trip: Trip!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        testPrint()
        tableView.separatorStyle = .none
    }

    func testPrint() {
        guard let test = trip else {
            print("Error2")
            return
        }
        print(test.tripName)
    }
}
