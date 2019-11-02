//
//  EventModel.swift
//  TripBook
//
//  Created by Viktor on 22.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import RealmSwift

class Event: Object {
    
    @objc dynamic var eventType = "Event type" // Add correct data format(Mb Enum ?! reservationApartment, reservationHotelRoom, departure, transfer )
      
    @objc dynamic var eventName = "Event name"
    @objc dynamic var eventDescription = "Description of event"
  
    @objc dynamic var countryName = "Country of destination"
    @objc dynamic var cityName = "City of destination"
    @objc dynamic var streetName = "Street of destination"
    @objc dynamic var buildingNumber = "Building number"
    @objc dynamic var cordinate = "Data: JPS" // Add correct data format
    @objc dynamic var cityMapCach = "Data: Map cash" // Add correct data format
    @objc dynamic var cityWeather = "JSON data weather: URL request" // Add correct data format
    
    @objc dynamic var placeName = "Place of destination"
    @objc dynamic var placePlan = "Data: JPG, PDF, PNG" // Add correct data format
    @objc dynamic var airportCode = "Airport code: : URL request" // Add correct data format
    
    @objc dynamic var startEvent = "Date" // Add correct data format
    @objc dynamic var endEvent = "Date" // Add correct data format
    let notification = List<Notification>()
    
    @objc dynamic var ticket = "Data: JPG, PDF, PNG" // Add correct data format
    @objc dynamic var typeOfDeparture = "Type of departure" // Add correct data format(Mb Enum ?! rentCar, taxi, bus, airplane, ship)
    @objc dynamic var numberOfDeperture = "Number of departure: URL request" // Add correct data format
    @objc dynamic var path = "JSON data: Gate, platform, pier: URL request" // Add correct data format
    
    @objc dynamic var eventCompleted = false
}

class Notification: Object {
    
    @objc dynamic var notification = Date()
    
}

