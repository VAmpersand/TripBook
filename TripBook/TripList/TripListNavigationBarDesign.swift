//
//  TripListNavigationBarDesign.swift
//  TripBook
//
//  Created by Viktor on 30.10.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension TripListTableViewController {
    
    func setupView() {
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        
        title = "Trip Book"
        
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Add",
            style: .plain,
            target: self,
            action: #selector(addingTrip)
        )
        
        navigationController?.navigationBar.tintColor = .black
    }
}
