//
//  ViewController.swift
//  HI-IBOutlet-Demo
//
//  Created by Sergii Nezdolii on 28/02/16.
//  Copyright © 2016 HyperIsland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Constants
    
    private let colors: [UIColor] = [
        UIColor.redColor(),
        UIColor.orangeColor(),
        UIColor.yellowColor(),
        UIColor.greenColor(),
        UIColor.cyanColor(),
        UIColor.blueColor(),
        UIColor.purpleColor()
    ]
    
    private let colorNames: [String] = [
        "Red",
        "Orange",
        "Yellow",
        "Green",
        "Cyan",
        "Blue",
        "Purple"
    ]
    
    //MARK: IBOutlets
    
    @IBOutlet weak var changeButtonColor: UIButton!
    @IBOutlet weak var awesomeView: UIView!
    @IBOutlet weak var colorText: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    //MARK: Properties
    
    var colorStepper: Int = 0
    
    //MARK: IBActions
    
    @IBAction func changeColor(sender: AnyObject?) {
        let colorIndex = colorStepper % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
                                colorText.textColor = colors [colorIndex]
                               colorText.text = colorNames [colorIndex]
        //increase our stepper
        colorStepper++
    }
    
    @IBAction func resetButton(sender: AnyObject?) {
        awesomeView?.backgroundColor = UIColor.whiteColor()
        colorText?.text = colorNames[0]
        colorText?.textColor = colors[0]
        
    }
    
    @IBAction func randomChangeColor(sender: AnyObject?) {
        let colorIndex = random() % colors.count
        
        awesomeView?.backgroundColor = colors[colorIndex]
    }

    
    @IBAction func sliderRed(sender: UISlider) {
         self.view.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
        awesomeView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
    }
    
    
    @IBAction func sliderGreen (sender: UISlider) {
        self.view.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
        awesomeView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
    }
    
    @IBAction func sliderBlue(sender: UISlider) {
        self.view.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
        awesomeView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1.0)
    }
    
    
    
}

