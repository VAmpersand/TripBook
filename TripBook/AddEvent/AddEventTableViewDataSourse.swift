//
//  AddEventTableViewDataSourse.swift
//  TripBook
//
//  Created by Viktor on 02.12.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddEventViewController {

    func numberOfSections(in tableView: UITableView) -> Int {
        
        var numberOfSections = 1
        
        switch eventType {
        case "Apartment reservation":
            numberOfSections = reservation.count
        case "Hotel room reservation":
            numberOfSections = reservation.count
        case "Transfer":
            numberOfSections = transfer.count
        case "Car ride":
            numberOfSections = carRide.count
        case "Flight":
            numberOfSections = enotherTypeRide.count
        case "Bus ride":
            numberOfSections = enotherTypeRide.count
        case "Train ride":
            numberOfSections = enotherTypeRide.count
        default:
            break
        }
        return numberOfSections
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
  
        var titleInsection = [""]
        
        switch eventType {
        case "Apartment reservation":
            titleInsection = reservation
        case "Hotel room reservation":
            titleInsection = reservation
        case "Transfer":
            titleInsection = transfer
        case "Car ride":
            titleInsection = carRide
        case "Flight":
            titleInsection = enotherTypeRide
        case "Bus ride":
            titleInsection = enotherTypeRide
        case "Train ride":
            titleInsection = enotherTypeRide
        default:
            break
        }
        return titleInsection[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        
//        switch eventType {
//        case "Apartment reservation":
//            cell.textLabel?.text = "Apartment reservation"
//        case "Hotel room reservation":
//            cell.textLabel?.text = "Hotel room reservation"
//        case "Transfer":
//            cell.textLabel?.text = "Transfer"
//        case "Car ride":
//            cell.textLabel?.text = "Car ride"
//        case "Flight":
//            cell.textLabel?.text = "Flight"
//        case "Bus ride":
//            cell.textLabel?.text = "Bus ride"
//        case "Train ride":
//            cell.textLabel?.text = "Train ride"
//        default:
//            break
//        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

