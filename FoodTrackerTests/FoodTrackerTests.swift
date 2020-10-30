//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by iosdev on 29.10.2020.
//  Copyright © 2020 iosdev. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    
    //MARK: Meal class Test
    
    func testMealInitializationSucceeds(){
     
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil,  rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
       
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    
    func testMealInitializationFails(){
      
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
         let largeRatingMeal = Meal.init(name: "Large", photo: nil,  rating: 6)
         XCTAssertNil(largeRatingMeal)
        
         let emptyRatingMeal = Meal.init(name: "", photo: nil, rating: 5)
         XCTAssertNil(emptyRatingMeal)
        
        
     }
}
