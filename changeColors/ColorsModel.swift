//
//  ColorsModel.swift
//  changeColors
//
//  Created by C4Q on 8/2/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import UIKit

struct ColorsModel {
    var red: CGFloat = 0.5
    var green: CGFloat = 0.5
    var blue: CGFloat = 0.5
    
    
    func getColor() -> UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
   
    
    mutating func changeRed(red: CGFloat) {
        self.red = red
    }
    
    mutating func changeBlue(blue: CGFloat) {
        self.blue = blue
    }
    
    
    mutating func changeGreen(green: CGFloat) {
        self.green = green
    }
    
}
