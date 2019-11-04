//
//  AddTripAlert.swift
//  TripBook
//
//  Created by Viktor on 03.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

enum Action {
    case save
    case editing
}

extension TripListTableViewController {
    
    
    
    func showAddingAlert(sentBy: String) {
        let title = "Test"
        let message = "\n\n\n\n\n\n\n\n\n\n"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        alert.isModalInPopover = true
        
        
        //Create a frame (placeholder/wrapper) for the picker and then create the picker
        let pickerFrameStart: CGRect = CGRect(x: 20, y: 52, width: 230, height: 60) // CGRectMake(left), top, width, height) - left and top are like margins
        let pickerStart: UIPickerView = UIPickerView(frame: pickerFrameStart)

//        if sentBy == "Trip start date:" {
//            pickerStart.tag = 1
//        } else if sentBy == "Trip end date:" {
//            pickerStart.tag = 2
//        } else {
//            pickerStart.tag = 0
//        }

        //set the pickers datasource and delegate
        pickerStart.delegate = self
        pickerStart.dataSource = self
        
        let pickerFrameEnd: CGRect = CGRect(x: 20, y: 120, width: 230, height: 60) // CGRectMake(left), top, width, height) - left and top are like margins
        let pickerEnd: UIPickerView = UIPickerView(frame: pickerFrameEnd)
              
//              if sentBy == "Trip start date:" {
//                  pickerEnd.tag = 1
//              } else if sentBy == "Trip end date:" {
//                  pickerEnd.tag = 2
//              } else {
//                  pickerEnd.tag = 0
//              }
              
              //set the pickers datasource and delegate
              pickerEnd.delegate = self
              pickerEnd.dataSource = self
        
        pickerStart.delegate = self
        pickerStart.dataSource = self
        
        
        let textFrameEnd: CGRect = CGRect(x: 20, y: 30, width: 200, height: 50) // CGRectMake(left), top, width, height) - left and top are like margins
        let textEnd: UILabel = UILabel(frame: textFrameEnd)
        textEnd.text = "Trip start date:"
        
        //Add the picker to the alert controller
        alert.view.addSubview(textEnd)
        alert.view.addSubview(pickerStart)
        alert.view.addSubview(pickerEnd)
        
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
        
        
        
        //Create the toolbar view - the view witch will hold our 2 buttons
        //        var toolFrame = CGRect(x: 17, y: 5, width: 270, height: 45);
        //        var toolView: UIView = UIView(frame: toolFrame);
        //
        //        //add buttons to the view
        //        var buttonCancelFrame: CGRect = CGRect(x: 0, y: 7, width: 100, height: 30); //size & position of the button as placed on the toolView
        //
        //        //Create the cancel button & set its title
        //        var buttonCancel: UIButton = UIButton(frame: buttonCancelFrame);
        //        buttonCancel.setTitle("Cancel", forState: UIControlState.Normal);
        //        buttonCancel.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal);
        //        toolView.addSubview(buttonCancel); //add it to the toolView
        //
        //        //Add the target - target, function to call, the event witch will trigger the function call
        //        buttonCancel.addTarget(self, action: "cancelSelection:", forControlEvents: UIControlEvents.TouchDown);
        //
        
        //        //add buttons to the view
        //        var buttonOkFrame: CGRect = CGRect(x: 170, y: 7, width: 100, height: 30); //size & position of the button as placed on the toolView
        //
        //        //Create the Select button & set the title
        //        var buttonOk: UIButton = UIButton(frame: buttonOkFrame);
        //        buttonOk.setTitle("Select", forState: UIControlState.Normal);
        //        buttonOk.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal);
        //        toolView.addSubview(buttonOk); //add to the subview
        //
        //        //Add the tartget. In my case I dynamicly set the target of the select button
        //        if(sentBy == "profile"){
        //            buttonOk.addTarget(self, action: "saveProfile:", forControlEvents: UIControlEvents.TouchDown);
        //        } else if (sentBy == "user"){
        //            buttonOk.addTarget(self, action: "saveUser:", forControlEvents: UIControlEvents.TouchDown);
        //        }
        //
        //        //add the toolbar to the alert controller
        //        alert.view.addSubview(toolView);
        
        //        self.presentViewController(alert, animated: true, completion: nil);
    }
    
//    func saveProfile(sender: UIButton){
//        // Your code when select button is tapped
//
//    }
//
//    func saveUser(sender: UIButton){
//        // Your code when select button is tapped
//    }
//
//    func cancelSelection(sender: UIButton){
//        println("Cancel");
//        self.dismissViewControllerAnimated(true, completion: nil);
//        // We dismiss the alert. Here you can add your additional code to execute when cancel is pressed
//    }
    
    // returns number of rows in each component..
//    func pickerView(pickerView: UIPickerView, numberOfComponent component: Int) -> Int{
//        if(pickerView.tag == 1){
//            return 5
//        } else if(pickerView.tag == 2){
//            return 5
//        } else  {
//            return 0;
//        }
//    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 31
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          if(pickerView.tag == 1){
                  return 3
              } else if(pickerView.tag == 2){
                  return 3
              } else  {
                  return 0;
              }
    }
    
    // Return the title of each row in your picker ... In my case that will be the profile name or the username string
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if(pickerView.tag == 1){
            
//            var selectedProfile: Profiles = self.profilesList[row] as Profiles;
            return "selectedProfile.profileName;"
            
        } else if(pickerView.tag == 2){
            
//            var selectedUser: Users = self.usersList[row] as Users;
            return "selectedUser.username;"
            
        } else  {
            
            return "";
            
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView.tag == 1){
//            var choosenProfile: Profiles = profilesList[row] as Profiles;
//            self.selectedProfile = choosenProfile.profileName;
            print("1")
        } else if (pickerView.tag == 2){
//            var choosenUser: Profiles = usersList[row] as Users;
//            self.selectedUsername = choosenUser.username;
            print("2")
        }
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
