//
//  TripListTableSegueManager.swift
//  TripBook
//
//  Created by Viktor on 24.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripListTableViewController {
    
    func segueToVCFirstEventAdding() {
        performSegue(withIdentifier: "segueToVCFirstEventAdding", sender: self)
    }
    
    
    @objc func segueToVCTripAdding() {
             performSegue(withIdentifier: "segueToVCTripAdding", sender: self)
         }
    
    
    func segueToTripVC() {
        performSegue(withIdentifier: "segueToTripVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToTripVC" {
            let tripVC = segue.destination as! TripTableViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                tripVC.trip = trips[indexPath.row]
            }
        }
    }

}
