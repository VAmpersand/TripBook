//
//  AddTripDataPickerDataSourse.swift
//  TripBook
//
//  Created by Viktor on 06.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//


import UIKit

extension AddTripViewController {
    
    func setStartDatePicker() -> UIDatePicker {
        
        let dataPickerFrame: CGRect = CGRect(x: 10, y: 35, width: 300, height: 300)
        let picker = UIDatePicker(frame: dataPickerFrame)
        
        picker.datePickerMode = .date
        picker.minimumDate = Date()
        let localeID = Locale.preferredLanguages.first
        picker.locale = Locale(identifier: localeID!)
        picker.addTarget(self, action: #selector(startDatePickerChange(datePicker:)), for: .valueChanged)
        return picker
    }
    
    @objc func startDatePickerChange(datePicker: UIDatePicker) {
        startDateTextField.text = dateManager.convertDateToStandartDateStr(date: datePicker.date)
        newTrip.startTrip = datePicker.date
        tempDate = datePicker.date
    }
    
    
    func setEndDatePicker() -> UIDatePicker {
        
        let dataPickerFrame: CGRect = CGRect(x: 10, y: 35, width: 300, height: 300)
        let picker = UIDatePicker(frame: dataPickerFrame)
        
        picker.datePickerMode = .date
        picker.minimumDate = Date()
        let localeID = Locale.preferredLanguages.first
        picker.locale = Locale(identifier: localeID!)
        picker.addTarget(self, action: #selector(endDatePickerChange(datePicker:)), for: .valueChanged)
        return picker
    }
    
    @objc func endDatePickerChange(datePicker: UIDatePicker) {
        endDateTextField.text = dateManager.convertDateToStandartDateStr(date: datePicker.date)
        newTrip.endTrip = datePicker.date
        tempDate = datePicker.date
    }
    
    
    func setToolBar() -> UIToolbar {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([flexSpace, doneButton], animated: true)
        
        return toolBar
    }
    
    @objc func doneAction() {
        view.endEditing(true)
    }
    
    
}
