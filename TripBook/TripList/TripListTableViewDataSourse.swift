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
        return testTripList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let trip = testTripList[indexPath.row]
        cell.textLabel?.text = trip.tripName
        
        let dateManager = DateManager()
        let dateStr = dateManager.setDateStyleForTripListTVC(startDate: trip.startTrip,
                                                             endDate: trip.endTrip)
        
        cell.detailTextLabel?.text = dateStr
        
        let image = ImageManager.setTripImage(tripComleted: trip.tripCompleted)
        cell.imageView?.image = image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        66
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let trip = testTripList[indexPath.row]
        
        if trip.events.isEmpty {
            performSegue(withIdentifier: "segueToVCFirstEventAdding", sender: self)
        } else {
            performSegue(withIdentifier: "segueToTripVC", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "segueToTripVC" {
            let tripVC = segue.destination as! TripTableViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                tripVC.trip = testTripList[indexPath.row]
            }
        }
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
    
}
