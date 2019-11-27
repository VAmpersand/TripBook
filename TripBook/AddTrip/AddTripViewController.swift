//
//  AddTripViewController.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//


import UIKit

protocol ReloadTabelDelegate: class {
    func reloadTable()
}

class AddTripViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageAddTripVC: UIImageView!
    @IBOutlet var countryTextField: UITextField!
    @IBOutlet var startDateTextField: UITextField!
    @IBOutlet var endDateTextField: UITextField!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var tripCompletedLabel: UILabel!
    @IBOutlet var tripCompletedSwitch: UISwitch!
    
    let tripListTVC = TripListTableViewController()
    let dateManager = DateManager()
    
    weak var delegat: ReloadTabelDelegate?
    
    var tempDate = Date()
    
    var newTrip = Trip()
    var tripForEdditing: Trip!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startDateTextField.inputView = setStartDatePicker()
        startDateTextField.inputAccessoryView = setToolBar()
        
        endDateTextField.inputView = setEndDatePicker()
        endDateTextField.inputAccessoryView = setToolBar()
        
        countryTextField.inputAccessoryView = setToolBar()
        
        if let trip = tripForEdditing {
            setTripParametrsInView(trip: trip)
        } else {
            setTripParametrsInView(trip: newTrip)
        }
    }
    
    
    @IBAction func saveTrip(_ sender: Any) {
        
        checkData()
        
        if let trip = tripForEdditing {
            DispatchQueue.main.async {
                StorageManager.editTrip(trip, self.newTrip)
            }
        } else {
            DispatchQueue.main.async {
                StorageManager.saveTrip(self.newTrip)
            }
        }
        delegat?.reloadTable()

        self.dismiss(animated: true, completion: nil)
        self.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            
            view.endEditing(true)
        }
}



