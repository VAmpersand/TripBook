//
//  AddTripViewSetupOptions.swift
//  TripBook
//
//  Created by Viktor on 25.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddTripViewController {
    
    func setTripParametrsInView(trip: Trip) {
        countryTextField.text = trip.tripName

        startDateTextField.text = dateManager.convertDateToStandartDateStr(date: trip.startTrip)
        endDateTextField.text = dateManager.convertDateToStandartDateStr(date: trip.endTrip)
        
        if tripForEdditing == nil {
            titleLabel.text = "Create new trip"
            
            tripCompletedSwitch.isHidden = true
            tripCompletedLabel.isHidden = true
        } else {
            titleLabel.text = "Edditing trip"
            
            if trip.tripCompleted == true {
                tripCompletedSwitch.setOn(true, animated: false)
            } else {
                tripCompletedSwitch.setOn(false, animated: false)
            }
        }
    }
    
    
    
 
}

