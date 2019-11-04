//
//  AddTripNavigationBarDesign.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

extension AddTripViewController {
    
    func setupView() {
          view.backgroundColor = .white
          setupNavigationBar()
      }
    
    func setupNavigationBar() {
           
           title = "Create trip"
           
           navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
           navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
           
           navigationController?.navigationBar.prefersLargeTitles = true
                   
//           navigationItem.rightBarButtonItem = UIBarButtonItem(
//               title: "Create",
//               style: .plain,
//               target: self,
//               action: #selector(addingTrip)
//           )
//           
           navigationController?.navigationBar.tintColor = .black
       }
}
