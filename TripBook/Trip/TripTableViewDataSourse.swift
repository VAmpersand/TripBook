//
//  TripTableViewDataSourse.swift
//  TripBook
//
//  Created by Viktor on 01.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trip.events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let events = trip.events
        let image: UIImage!
        
        cell.textLabel?.text = events[indexPath.row].eventName
        
        if indexPath.row == 0 {
            image = ImageManager.setFirstEventImage(eventComleted: events[indexPath.row].eventCompleted)
        } else if indexPath.row == events.count - 1{
            image = ImageManager.setLastEventImage(eventComleted: events[indexPath.row].eventCompleted)
        } else {
            image = ImageManager.setUsualEventImage(eventComleted: events[indexPath.row].eventCompleted)
        }
        cell.imageView?.image = image
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        66
    }
    
    func tableView(tableView: UITableView, didSelectRow indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

