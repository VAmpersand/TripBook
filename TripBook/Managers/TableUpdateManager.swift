//
//  TableUpdateManager.swift
//  TripBook
//
//  Created by Viktor on 22.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import Foundation

extension TripListTableViewController {

    func save(_ trip: Trip) {
        
        DispatchQueue.main.async {
            StorageManager.saveTrip(trip)
            self.tableView.insertRows(
                at: [IndexPath(row: self.trips.count - 1, section: 0 )],
                with: .automatic)
        }
    }
    
    func resave(_ newTrip: Trip, _ indexPath: IndexPath) {
        
        DispatchQueue.main.async {
            StorageManager.editTrip(self.trips[indexPath.row], newTrip)
            self.tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    
    func delete(_ indexPath: IndexPath) {
        
        DispatchQueue.main.async {
            StorageManager.removeTrip(self.trips[indexPath.row])
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
