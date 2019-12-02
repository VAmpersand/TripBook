//
//  AddEventTableViewDesign.swift
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
}
