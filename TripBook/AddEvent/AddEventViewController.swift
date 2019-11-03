//
//  AddEventViewController.swift
//  TripBook
//
//  Created by Viktor on 31.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var choosingEventTipe: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choosingEventTipe.delegate = self
        choosingEventTipe.dataSource = self
        
        
    }

}
    

