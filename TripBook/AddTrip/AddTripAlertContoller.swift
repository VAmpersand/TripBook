//
//  AddTripAlertContoller.swift
//  TripBook
//
//  Created by Viktor on 05.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit



extension AddTripViewController {
    
    func showChoosingDateAlert() {
        let title = "Choose the date"
        let message = "\n\n\n\n\n\n\n\n"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
        
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
        
    }
}
