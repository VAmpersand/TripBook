//
//  AddEventViewController.swift
//  TripBook
//
//  Created by Viktor on 31.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tripListTableView: UITableView!
    @IBOutlet var choosingTypeEventPicker: UIPickerView!
    
    let cellID = "addEventCell"
    
    var eventType = "Apartment reservation"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choosingTypeEventPicker.delegate = self
        choosingTypeEventPicker.dataSource = self
        
        tripListTableView.delegate = self
        tripListTableView.dataSource = self
        
        setupView()
        setAtributesTableView()
        setAtributePickerView()
    }

}
    

