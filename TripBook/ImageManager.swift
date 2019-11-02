//
//  ImageManager.swift
//  TripBook
//
//  Created by Viktor on 01.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class ImageManager: UIViewController {
    
    
    static func setTripImage(tripComleted: Bool) -> UIImage{
        
        var image: UIImage!
        
        if tripComleted {
            image = UIImage(named: "done")
        } else {
            image = UIImage(named: "notDone")
        }
        return image
    }
    
    static func setEventImage(eventComleted: Bool) -> UIImage{
           
           var image: UIImage!
           
           if eventComleted {
               image = UIImage(named: "eventDone")
           } else {
               image = UIImage(named: "eventNotDone")
           }
           return image
       }
    
    static func setFirstEventImage(eventComleted: Bool) -> UIImage{
        
        var image: UIImage!
        
        if eventComleted {
            image = UIImage(named: "firstEventDone")
        } else {
            image = UIImage(named: "firstEventNotDone")
        }
        return image
    }
    
    static func setLastEventImage(eventComleted: Bool) -> UIImage{
        
        var image: UIImage!
        
        if eventComleted {
            image = UIImage(named: "LastEventDone")
        } else {
            image = UIImage(named: "LastEventNotDone")
        }
        return image
    }
    
}
