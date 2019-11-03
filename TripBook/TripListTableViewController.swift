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
    var testTripList = [Trip(), Trip(), Trip()]
    
    @objc func testAddTripFunc() {
        print("Add trip")
    }
    let event = Event()
    var trip = Trip()
    
    func addEvent(){
        trip.events.append(event)
        trip.events.append(event)
        trip.events.append(event)
        trip.events.append(event)
        trip.events.append(event)
        trip.events.append(event)
        trip.events.append(event)
        trip.events.append(event)
        testTripList.append(trip)
    }
    
    //
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent()
        setupView()
        
    }
}
