//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Erfan Ahmed Siam on 04/04/2021.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    var bmiValue = "0.0"
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let heightString = String(format: "%.2f",sender.value)
        heightLabel.text = heightString + " m"
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + " kg"
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = calculatorBrain.getBMIValue()
            destinationVC.bmiColor = calculatorBrain.getBMIColor()
            destinationVC.bmiAdvice = calculatorBrain.getBMIAdvice()
        }
    }
}

