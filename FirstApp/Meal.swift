//
//  Meal.swift
//  FirstApp
//
//  Created by Annsh Singh on 22/01/20.
//  Copyright © 2020 Annsh Singh. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
     
    /// - Warning: Name and rating cannot be nil
    ///
    /// Usage:
    ///
    ///     Used to create a Meal object
    ///
    /// - Parameter name: Name of the meal
    /// - Parameter photo: Photo of the meal (if any)
    /// - Parameter rating: Rating of the meal
    ///
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialization should fail if there is no name or if the rating is negative.
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
         
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
