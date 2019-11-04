//
//  AddTripViewController.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var imageAddTripVC: UIImageView!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var startDateLabel: UILabel!
    @IBOutlet var endDateLabel: UILabel!
    
    @IBOutlet var countryTextField: UITextField!
    
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var startDateButton: UIButton!
    @IBOutlet var endDateButton: UIButton!
    
    var trip = Trip()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
    }
    
    @IBAction func setStartDate(_ sender: Any) {
        showAddingAlert()
    }
    
    @IBAction func setEndDate(_ sender: Any) {
        showAddingAlert()
    }
    
    @IBAction func saveTrip(_ sender: Any) {
        guard let text = countryTextField.text else { return }
        trip.tripName = text
        print(trip.tripName)
        
       
    }
    
}
