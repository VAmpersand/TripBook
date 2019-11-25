//
//  TripTableSegueManager.swift
//  TripBook
//
//  Created by Viktor on 25.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripTableViewController {
    
    @objc func addingEvent() {
           performSegue(withIdentifier: "segueToVCEventAdding", sender: self)
       }
    
}
