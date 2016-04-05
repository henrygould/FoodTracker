//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Henry Gould on 3/9/16.
//  Copyright © 2016 Henry Gould. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    //MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    
    
  
    
    

// MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    
            
        for var index = 0; index < 5; ++index {
        
            let button = UIButton(frame: CGRect(x: index * (44 + 5), y:0, width: 44, height: 44))
   
            switch index {
            
            case 1:
            button.backgroundColor = UIColor.purpleColor()
                
            case 2:
            button.backgroundColor = UIColor.yellowColor()
                
            case 3:
            button.backgroundColor = UIColor.redColor()
                
            case 4:
            button.backgroundColor = UIColor.greenColor()
                
            default:
            button.backgroundColor = UIColor.brownColor()

            
            }
        
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
        
            addSubview(button)
        }
        
    }
    
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    
    // MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👏🏾")
    }
    
}
