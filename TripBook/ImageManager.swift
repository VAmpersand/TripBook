//
//  ImageManager.swift
//  TripBook
//
//  Created by Viktor on 01.11.2019.
//  Copyright © 2019 Viktor. All rights reserved.
//

import UIKit

class ImageManager: UIViewController {
    
    
    static func setImage(tripComleted: Bool) -> UIImage{
        
        var image: UIImage!
        
        if tripComleted {
            image = UIImage(named: "done")
        } else {
            image = UIImage(named: "notDone")
        }
        return image
    }
}
