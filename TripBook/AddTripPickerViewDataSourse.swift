//
//  AddTripPickerViewDataSourse.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddTripViewController {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return eventTypes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return eventTypes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            print("Reseration apartment")
        case 1:
            print("Reservation hotel room")
        case 2:
            print("Departure")
        case 3:
            print("Transfer")
        case 4:
            print("Flight")
        case 5:
            print("Bus ride")
        case 6:
            print("Train ride")
        default:
            break
        }
    }
}
