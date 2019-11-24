//
//  StorageManager.swift
//  TripBook
//
//  Created by Viktor on 24.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveTrip(_ trip: Trip) {
        try! realm.write {
            realm.add(trip)
        }
    }
    
    static func removeTrip(_ trip: Trip) {
        try! realm.write {
            realm.delete(trip)
        }
    }
    
    static func editTrip(_ trip: Trip, _ newTrip: Trip) {
        try! realm.write {
            trip.tripName = newTrip.tripName
            trip.startTrip = newTrip.startTrip
            trip.endTrip = newTrip.endTrip
            trip.tripCompleted = newTrip.tripCompleted
        }
    }
}

