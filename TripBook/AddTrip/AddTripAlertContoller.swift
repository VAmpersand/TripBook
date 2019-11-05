//
//  AddTripAlertContoller.swift
//  TripBook
//
//  Created by Viktor on 05.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

enum Action {
    case save
    case editing
}

extension AddTripViewController {
            
            func showAddingAlert() {
                let title = "Choose the date"
                let message = "\n\n\n\n\n\n\n\n\n"
                let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
                
                let pickerView = setPickerView()
                
                alert.view.addSubview(pickerView)
               
                let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
                    //
                    //                          if let carModel = alert.textFields?.first?.text!, !carModel.isEmpty,
                    //                              let bodyType = alert.textFields?[1].text!, !bodyType.isEmpty,
                    //                              let manufacturer = alert.textFields?[2].text!, !manufacturer.isEmpty,
                    //                              let yearOfIssue = alert.textFields?[3].text!, !yearOfIssue.isEmpty {
                    //
                    //                              switch action {
                    //                              case .save:
                    //                                print("Save")
                    //                              case .editing:
                    //                                print("Edit")
                    //                              }
                    //                          } else {
                    //                             self.showErrorAlert()
                    //                          }
                }
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
                      
                alert.addAction(saveAction)
                alert.addAction(cancelAction)
                present(alert, animated: true)

            }
     
            //
            //
            //        public func showAddingAlert(title: String,
            //                                    message: String,
            //                                    action: Action) {
            //
            //            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            //
            //              let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            //
            //                  if let carModel = alert.textFields?.first?.text!, !carModel.isEmpty,
            //                      let bodyType = alert.textFields?[1].text!, !bodyType.isEmpty,
            //                      let manufacturer = alert.textFields?[2].text!, !manufacturer.isEmpty,
            //                      let yearOfIssue = alert.textFields?[3].text!, !yearOfIssue.isEmpty {
            //
            //                      switch action {
            //                      case .save:
            //                        print("Save")
            //                      case .editing:
            //                        print("Edit")
            //                      }
            //                  } else {
            //    //                  self.showErrorAlert()
            //                  }
            //              }
            //
            //              let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
            //
            //              switch action {
            //              case .save:
            //                  alert.addTextField { (textField) in
            //                      textField.placeholder = "Country" }
            //                  alert.addTextField { (textField) in
            //                      textField.placeholder = "Date of starting" }
            //                  alert.addTextField { (textField) in
            //                      textField.placeholder = "Date of ending" }
            //
            //              case .editing:
            //                print("Edit")
            //    //              alert.addTextField { textField in
            //    //                  textField.text = self.currentCar.carModel }
            //    //              alert.addTextField { textField in
            //    //                  textField.text = self.currentCar.bodyType }
            //    //              alert.addTextField { textField in
            //    //                  textField.text = self.currentCar.manufacturer }
            //              }
            //              alert.addAction(saveAction)
            //              alert.addAction(cancelAction)
            //              present(alert, animated: true)
            //          }
            //
            //    //      private func showErrorAlert(){
            //    //
            //    //          let alert = UIAlertController(title: "Error" , message: "Enter correct data", preferredStyle: .alert)
            //    //
            //    //          let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            //    //
            //    //          alert.addAction(okAction)
            //    //          present(alert, animated: true)
            //    //      }
        }
