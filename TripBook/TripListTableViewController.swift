//
//  TripListTableViewController.swift
//  
//
//  Created by Viktor on 22.10.2019.
//

import UIKit
import RealmSwift

class TripListTableViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let cellID = "cell"
    
    var trips: Results<Trip>!
    
    
    // Test

    var testTripList = [Trip(), Trip(), Trip()]
  
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
    
    @objc func addingTrip() {
        print("Add trip")
        performSegue(withIdentifier: "segueToVCTripAdding", sender: self)
    }
}
