//
//  TripTableViewController.swift
//  TripBook
//
//  Created by Viktor on 31.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class TripTableViewController: UITableViewController {
    
    var trip: Trip!
    
    var tripForAdditing: Trip!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        testPrint()
    }

    func testPrint() {
        guard let test = tripForAdditing else {
            print("Error2")
            return
        }
        print(test.tripName)
    }
}
