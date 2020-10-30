//
//  Meal.swift
//  FoodTracker
//
//  Created by iosdev on 30.10.2020.
//  Copyright © 2020 iosdev. All rights reserved.
//

import UIKit




class Meal{
    var name: String
    var photo : UIImage?
    var rating: Int
    
  
    
    
    
    init?(name: String, photo: UIImage?, rating: Int) {
       
        //If the name is empty and reating negative intialaztions fails
        if name.isEmpty || rating < 0{
            return nil
        }

        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
