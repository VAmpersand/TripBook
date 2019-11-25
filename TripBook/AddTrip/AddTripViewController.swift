//
//  AddTripViewController.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

//protocol ReloadTabelDelegate {
//    func reloadTable()
//}

import UIKit

class AddTripViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var imageAddTripVC: UIImageView!
    @IBOutlet var countryTextField: UITextField!
    @IBOutlet weak var startDateTextField: UITextField!
    @IBOutlet weak var endDateTextField: UITextField!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var tripCompletedLabel: UILabel!
    @IBOutlet var tripCompletedSwitch: UISwitch!
    
    let tripListTVC = TripListTableViewController()
    let dateManager = DateManager()
    
    //    var delegat: ReloadTabelDelegate?
    
//    var tempDate = Date()
    var newTrip = Trip()
    var tripForEdditing: Trip!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startDateTextField.inputView = setStartDatePicker()
        startDateTextField.inputAccessoryView = setToolBar()
        
        endDateTextField.inputView = setEndDatePicker()
        endDateTextField.inputAccessoryView = setToolBar()
        
        countryTextField.inputAccessoryView = setToolBar()
        
        if tripForEdditing == nil {
            setTripParametrsInView(trip: newTrip)
        } else {
            setTripParametrsInView(trip: tripForEdditing)
        }
    }
    
    
    @IBAction func saveTrip(_ sender: Any) {
        guard let tripName = countryTextField.text else { return }
        newTrip.tripName = tripName
        
        if tripCompletedSwitch.isOn {
            newTrip.tripCompleted = true
        } else {
            newTrip.tripCompleted = false
        }
        
        if tripForEdditing == nil {
            DispatchQueue.main.async {
                StorageManager.saveTrip(self.newTrip)
            }
        } else {
            DispatchQueue.main.async {
                StorageManager.editTrip(self.tripForEdditing, self.newTrip)
            }
        }
        
        //        delegat?.reloadTable()
        
        self.dismiss(animated: true, completion: nil)
        
        self.viewWillAppear(true)
        self.viewDidLoad()
        
    }
    
}



