//
//  TripListTableViewController.swift
//  
//
//  Created by Viktor on 22.10.2019.
//

import UIKit
import RealmSwift

class TripListTableViewController: UITableViewController {
    
    
    let cellID = "cell"
    
    var trips: Results<Trip>!
    
    // Test
    let testTripList = [Trip(), Trip(), Trip()]
    @objc func testAddFunc() {
              print("Add trip")
          }
    //
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
}
