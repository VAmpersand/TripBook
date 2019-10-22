//
//  EventModel.swift
//  TripBook
//
//  Created by Viktor on 22.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import RealmSwift

class Event: Object {
    
    @objc dynamic var eventName = "Event name"
    @objc dynamic var descriptionOfEvent = "Description of event"
    
    @objc dynamic var countryName = "Country of destination"
    @objc dynamic var cityName = "City of destination"
    @objc dynamic var streetName = "Street of destination"
    @objc dynamic var buildingNumber = "Building number"
    @objc dynamic var cordinate = "Data: JPS" // Add correct data format
    @objc dynamic var cityMapCach = "Data: Map cash" // Add correct data format
    
    @objc dynamic var placeName = "Place of destination"
    @objc dynamic var placePlan = "Data: JPG, PDF, PNG" // Add correct data format
    
    @objc dynamic var startEvent = Date()
    @objc dynamic var endEvent = Date()
    
    @objc dynamic var ticket = "Data: JPG, PDF, PNG" // Add correct data format
    
}
