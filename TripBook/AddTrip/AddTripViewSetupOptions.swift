//
//  AddTripViewSetupOptions.swift
//  TripBook
//
//  Created by Viktor on 25.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddTripViewController {
    
    func setTitleButton(button: UIButton, date: Date) {
        let date = dateManager.convertDateToStandartDateStr(date: date)
        button.setTitle(date, for: .normal)
    }
    
    func setTripParametrs(trip: Trip) {
        countryTextField.text = trip.tripName
        setTitleButton(button: endDateButton, date: trip.startTrip)
        setTitleButton(button: startDateButton, date: trip.endTrip)
        
        if tripForEdditing == nil {
            tripCompletedSwitch.isHidden = true
            tripCompletedLabel.isHidden = true
        } else {
            if trip.tripCompleted == true {
                tripCompletedSwitch.setOn(true, animated: false)
            } else {
                tripCompletedSwitch.setOn(false, animated: false)
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           super.touchesBegan(touches, with: event)
           
           view.endEditing(true)
       }
}

