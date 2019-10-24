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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
