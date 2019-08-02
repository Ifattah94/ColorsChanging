//
//  ViewController.swift
//  changeColors
//
//  Created by C4Q on 8/2/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = ColorsModel()
    
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            model.changeRed(red: CGFloat(sender.value))
            updateBackgroundColor()
            
        case 1:
            model.changeGreen(green: CGFloat(sender.value))
            updateBackgroundColor()
        case 2:
            model.changeBlue(blue: CGFloat(sender.value))
            updateBackgroundColor()
        default:
            print("Never gonna happen")
        }
    }
    
    func updateBackgroundColor() {
        self.view.backgroundColor = model.getColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = model.getColor()
       
    }


}

