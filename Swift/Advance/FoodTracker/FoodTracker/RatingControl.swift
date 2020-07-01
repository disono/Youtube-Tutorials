//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Archie on 10/06/2019.
//  Copyright © 2019 Archie. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    // Initializations
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // Private methods
    private func setupButtons() {
        // Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
    }
    
}
