//
//  TripNavigationBarDesign.swift
//  TripBook
//
//  Created by Viktor on 01.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripTableViewController {
    
    func setupView() {
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        
        title = trip.tripName
        
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Add",
            style: .plain,
            target: self,
            action: #selector(addingEvent)
        )
        
        navigationController?.navigationBar.tintColor = .black
    }
}

