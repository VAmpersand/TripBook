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
        
        let pickerFrame: CGRect = CGRect(x: 20, y: 52, width: 230, height: 200)
        let pickerView: UIPickerView = UIPickerView(frame: pickerFrame)
        
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
