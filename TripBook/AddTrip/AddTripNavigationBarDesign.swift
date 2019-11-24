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
           
        if tripForEdditing == nil {
            title = "Create new trip"
        } else {
             title = "Edditing trip"
        }
   
           navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
           navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
           
           navigationController?.navigationBar.prefersLargeTitles = true
           navigationController?.navigationBar.tintColor = .black
       }
}
