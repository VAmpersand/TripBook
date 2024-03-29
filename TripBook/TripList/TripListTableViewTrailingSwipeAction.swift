//
//  TripListTableViewTrailingSwipeAction.swift
//  TripBook
//
//  Created by Viktor on 20.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripListTableViewController {
    
    func editingTrip(at indexPath: IndexPath) -> UIContextualAction {
        let button = UIContextualAction(style: .normal, title: "Editing") { (_, action, completion) in
            
            let edditingVC = self.storyboard?.instantiateViewController(withIdentifier: "AddingTrip") as! AddTripViewController
            edditingVC.tripForEdditing = self.trips[indexPath.row]
            self.present(edditingVC, animated: true, completion: nil)
            completion(true)
        }
        button.backgroundColor = .gray
        
        return button
    }
    
    func deleteTrip(at indexPath: IndexPath) -> UIContextualAction {
        let button = UIContextualAction(style: .destructive , title: "Delete") { (_, action, completion) in
            
            DispatchQueue.main.async {
                StorageManager.removeTrip(self.trips[indexPath.row])
                self.tableView.deleteRows(at: [indexPath], with: .automatic)
            }
            
            completion(true)
        }
        button.backgroundColor = .red
        
        return button
    }
    
}
