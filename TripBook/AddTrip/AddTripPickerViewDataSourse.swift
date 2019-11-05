//
//  AddTripPickerViewDataSourse.swift
//  TripBook
//
//  Created by Viktor on 05.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddTripViewController {
    
    func setPickerView() -> UIPickerView {
        
        let pickerFrame: CGRect = CGRect(x: 20, y: 45, width: 230, height: 160)
        let pickerView: UIPickerView = UIPickerView(frame: pickerFrame)
        
        pickerView.layer.borderWidth = 1
        pickerView.layer.borderColor = CGColor(srgbRed: 0,
                                                green: 0,
                                                blue: 0,
                                                alpha: 0.15)
        pickerView.layer.cornerRadius = 10
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        return pickerView
    }
    
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
            print("Apartment reservation")
        case 1:
            print("Hotel room reservation")
        case 2:
            print("Transfer")
        case 3:
            print("Car ride")
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
