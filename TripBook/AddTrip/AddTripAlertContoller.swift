//
//  AddTripAlertContoller.swift
//  TripBook
//
//  Created by Viktor on 05.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

enum KindOfDate {
    case startDate
    case endDate
}

extension AddTripViewController {
    
    func showChoosingDateAlert(kindOfDate: KindOfDate) {
        let title = "Choose the date"
        let message = "\n\n\n\n\n\n\n\n"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let picker = setDataPicker()
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            switch kindOfDate {
            case .startDate:
                self.newTrip.startTrip = self.tempDate
                self.setTitleButton(button: self.startDateButton, date: self.newTrip.startTrip)
            case .endDate:
                self.newTrip.endTrip = self.tempDate
                self.setTitleButton(button: self.endDateButton, date: self.newTrip.endTrip)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        alert.view.addSubview(picker)
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
        
    }
}
