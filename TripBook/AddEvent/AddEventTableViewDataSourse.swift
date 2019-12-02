//
//  AddEventTableViewDataSourse.swift
//  TripBook
//
//  Created by Viktor on 02.12.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddEventViewController {
    
    func setAtributesTableView() {
        tripListTableView.separatorStyle = .none
        tripListTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tripListTableView.layer.cornerRadius = 10
        tripListTableView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        switch eventType {
        case "Apartment reservation":
            cell.textLabel?.text = "Apartment reservation"
        case "Hotel room reservation":
            cell.textLabel?.text = "Hotel room reservation"
        case "Transfer":
            cell.textLabel?.text = "Transfer"
        case "Car ride":
            cell.textLabel?.text = "Car ride"
        case "Flight":
            cell.textLabel?.text = "Flight"
        case "Bus ride":
            cell.textLabel?.text = "Bus ride"
        case "Train ride":
            cell.textLabel?.text = "Train ride"
        default:
            break
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Test")
    }
    
}

