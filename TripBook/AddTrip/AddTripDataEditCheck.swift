//
//  AddTripDataEditCheck.swift
//  TripBook
//
//  Created by Viktor on 26.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddTripViewController {
    
    func checkData() {
        
        guard let tripName = countryTextField.text else { return }
        newTrip.tripName = tripName
        
        
        guard let trip = tripForEdditing else {
            newTrip = Trip()
            return
        }
        let startDate = dateManager.convertDateToStandartDateStr(date: trip.startTrip)
        let endDate = dateManager.convertDateToStandartDateStr(date: trip.endTrip)
        
        if startDate == startDateTextField.text {
            newTrip.startTrip = trip.startTrip
        } else {
            newTrip.startTrip = tempDate
        }
        
        if endDate == endDateTextField.text {
            newTrip.endTrip = trip.endTrip
        } else {
            newTrip.endTrip = tempDate
        }
        
        
        if tripCompletedSwitch.isOn {
            newTrip.tripCompleted = true
        } else {
            newTrip.tripCompleted = false
        }
    }  
}
