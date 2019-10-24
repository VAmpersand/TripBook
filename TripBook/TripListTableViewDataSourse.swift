//
//  TripListTableViewDataSourse.swift
//  TripBook
//
//  Created by Viktor on 24.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripListTableViewController {
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        
        let trip = trips[indexPath.row]
        cell.textLabel?.text = trip.tripName
        cell.detailTextLabel?.text = trip.startTrip + " - " + trip.endTrip
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    
    //Добавление кнопки редактирования и удаления при свайпе по ячейке
    
    //override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    //
    //    let editing = editingCarsEntry(at: indexPath)
    //    let delete = deleteCarsEntry(at: indexPath)
    //
    //    currentCar = cars[indexPath.row]
    //    currentIndexPath = indexPath
    //
    //    return UISwipeActionsConfiguration(actions: [delete, editing])
    //}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! TripTableViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            
        }
    }
}
