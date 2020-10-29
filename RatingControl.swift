//
//  RatingControl.swift
//  FoodTracker
//
//  Created by iosdev on 29.10.2020.
//  Copyright © 2020 iosdev. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    private var ratingButtons = [UIButton]()
    
    var rating = 0
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setUpButton()
    }
    
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setUpButton()
        }
    }
     
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setUpButton()
        }
    }
    
    
    private func setUpButton() {
        
        for _ in 0..<starCount {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            
            
            
            for button in ratingButtons {
                 removeArrangedSubview(button)
                 button.removeFromSuperview()
             }
             ratingButtons.removeAll()
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }

    
    @objc func ratingButtonTapped(button: UIButton){
        print("Button pressed")
    }
    
    
    
    
}
