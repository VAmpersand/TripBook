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
    
    // Test
    @objc func testAddEventFunc() {
        print("Add event")
    }
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trip.events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
        
        let events = trip.events
        
        cell.textLabel?.text = events[indexPath.row].eventName
        
        return cell
    }
}
