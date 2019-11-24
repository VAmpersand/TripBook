//
//  AddTripDataPickerDataSourse.swift
//  TripBook
//
//  Created by Viktor on 06.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//


import UIKit

extension AddTripViewController {
        
    func setDataPicker() -> UIDatePicker {
        
        let dataPickerFrame: CGRect = CGRect(x: 10, y: 35, width: 250, height: 160)
        let picker: UIDatePicker = UIDatePicker(frame: dataPickerFrame)
        
        picker.datePickerMode = .date
        picker.minimumDate = Date()
        picker.addTarget(self, action: #selector(datePickerChange(datePicker:)), for: .valueChanged)
        
        return picker
    }
    
    @objc func datePickerChange(datePicker: UIDatePicker) {
        tempDate = datePicker.date
    }
}
