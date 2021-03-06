//
//  ViewController.swift
//  KaznacheevAS_HW2.2
//
//  Created by Kaznacheev on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlet
    @IBOutlet weak var bacgraundList: UIView!
    
    @IBOutlet weak var rgbReg: UISlider!
    @IBOutlet weak var rgbGreen: UISlider!
    @IBOutlet weak var rgbBlue: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        bacgraundList.layer.cornerRadius = 10
        
        rgbReg.minimumTrackTintColor = .red
        rgbGreen.minimumTrackTintColor = .green
        rgbBlue.minimumTrackTintColor = .blue
        
        bacgraundList.backgroundColor = UIColor(
            red: CGFloat(rgbReg.value),
            green: CGFloat(rgbGreen.value),
            blue: CGFloat(rgbBlue.value),
            alpha: 1)
        
        labelRed.text = "Red \(String(format: "%.2f", rgbReg.value))"
        labelGreen.text = "Green \(String(format: "%.2f", rgbGreen.value))"
        labelBlue.text = "Blue \(String(format: "%.2f", rgbBlue.value))"

    }

    //MARK: Action
    @IBAction func colorSlider() {
        bacgraundList.backgroundColor = UIColor(
            red: CGFloat(rgbReg.value),
            green: CGFloat(rgbGreen.value),
            blue: CGFloat(rgbBlue.value),
            alpha: 1
        )
        
        labelRed.text = "Red \(String(format: "%.2f", rgbReg.value))"
        labelGreen.text = "Green \(String(format: "%.2f", rgbGreen.value))"
        labelBlue.text = "Blue \(String(format: "%.2f", rgbBlue.value))"
        
    }
    
}

