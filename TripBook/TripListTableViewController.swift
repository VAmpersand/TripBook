//
//  TripListTableViewController.swift
//  
//
//  Created by Viktor on 22.10.2019.
//

import UIKit
import RealmSwift

class TripListTableViewController: UITableViewController, ReloadTableDelegate {
    
    let cellID = "cell"
    
    var trips: Results<Trip>!
        
    // Set Test trip
    
    let tripTest = Trip()
    
    let event = Event()
    
    func setTestTrip() {
        tripTest.events.append(event)
        tripTest.events.append(event)
        tripTest.events.append(event)
        tripTest.events.append(event)
        tripTest.events.append(event)
        tripTest.events.append(event)
        tripTest.tripName = "Test trip"
        
        StorageManager.saveTrip(tripTest)
    }
    
    //
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
          tableView.reloadData()
        
    }
    
    func reloadTable() {
        title = "Succes"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setTestTrip()
        trips = realm.objects(Trip.self)
    }
    
}
