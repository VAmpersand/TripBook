//
//  TripListModel.swift
//  TripBook
//
//  Created by Viktor on 22.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import RealmSwift

class Trip: Object {
    
    @objc dynamic var tripName = "Trip name"
    @objc dynamic var startTrip = "Date" // Add correct data format
    @objc dynamic var endTrip = "Date" // Add correct data format
    let events = List<Event>()
    @objc dynamic var tripCompleted = false
}

