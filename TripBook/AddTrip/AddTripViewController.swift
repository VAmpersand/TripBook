//
//  AddTripViewController.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {
    
    @IBOutlet var imageAddTripVC: UIImageView!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var startDateLabel: UILabel!
    @IBOutlet var endDateLabel: UILabel!
    
    @IBOutlet var countryTextField: UITextField!
    
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var startDateButton: UIButton!
    @IBOutlet var endDateButton: UIButton!
    
    let dateManager = DateManager()
    
    var tempDate = Date()
    
    var trip = Trip()
    
    var tripForAdditing: Trip!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        countryTextField.text = trip.tripName
        setTitleButton(button: endDateButton, date: trip.startTrip)
        setTitleButton(button: startDateButton, date: trip.endTrip)
    
    }
    
    @IBAction func setStartDate(_ sender: Any) {
        showChoosingDateAlert(kindOfDate: .startDate)
    }
    
    @IBAction func setEndDate(_ sender: Any) {
        showChoosingDateAlert(kindOfDate: .endDate)
    }
    
    @IBAction func saveTrip(_ sender: Any) {
        guard let text = countryTextField.text else { return }
        trip.tripName = text
        StorageManager.saveTrip(trip)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension AddTripViewController {
    
    func setTitleButton(button: UIButton, date: Date) {
        let date = dateManager.convertDateToStandartDateStr(date: date)
        button.setTitle(date, for: .normal)
    }
    
}
