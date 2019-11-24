//
//  AddTripViewController.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

protocol ReloadTabelDelegate {
    func reloadTable()
}

import UIKit

class AddTripViewController: UIViewController {
    
    let tripListTVC = TripListTableViewController()
    
    @IBOutlet var imageAddTripVC: UIImageView!
    
    @IBOutlet var countryTextField: UITextField!
    
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var startDateButton: UIButton!
    @IBOutlet var endDateButton: UIButton!
    
    let dateManager = DateManager()
    
    var delegat: ReloadTabelDelegate?
    
    var tempDate = Date()
    
    var newTrip = Trip()
    var tripForEdditing: Trip!
    var currentIndexPath: IndexPath!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        if tripForEdditing == nil {
            setTripParametrs(trip: newTrip)
        } else {
            setTripParametrs(trip: tripForEdditing)
        }
    }
    
    @IBAction func setStartDate(_ sender: Any) {
        showChoosingDateAlert(kindOfDate: .startDate)
    }
    
    @IBAction func setEndDate(_ sender: Any) {
        showChoosingDateAlert(kindOfDate: .endDate)
    }
    
    @IBAction func saveTrip(_ sender: Any) {
        guard let tripName = countryTextField.text else { return }
        newTrip.tripName = tripName
        
        if tripForEdditing == nil {
            DispatchQueue.main.async {
                StorageManager.saveTrip(self.newTrip)
            }
        } else {
            DispatchQueue.main.async {
                StorageManager.editTrip(self.tripForEdditing, self.newTrip)
            }
        }
        
        delegat?.reloadTable()
        
        self.viewDidLoad()
        self.viewWillAppear(true)
        
        self.navigationController?.popViewController(animated: true)
    }
}


extension AddTripViewController {
    
    func setTitleButton(button: UIButton, date: Date) {
        let date = dateManager.convertDateToStandartDateStr(date: date)
        button.setTitle(date, for: .normal)
    }
    
    func setTripParametrs(trip: Trip) {
        countryTextField.text = trip.tripName
        setTitleButton(button: endDateButton, date: trip.startTrip)
        setTitleButton(button: startDateButton, date: trip.endTrip)
    }
}
