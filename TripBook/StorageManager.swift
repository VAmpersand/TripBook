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
    
    static func addTrip(_ trip: Trip) {
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
           
        }
    }
    
//    static func addEvent(_ event: Event) {
//          try! realm.write {
//            realm.add(event)
//          }
//      }
//
//      static func removeEvent(_ event: Event) {
//          try! realm.write {
//              realm.delete(event)
//          }
//      }
//
//      static func editEvent(_ event: Event, _ newEvent: Event) {
//          try! realm.write {
//
//          }
//      }
}

