//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Erfan Ahmed Siam on 04/04/2021.
//  
//

import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    func getBMIValue() -> String {
        let bmiToOneDecimalString = String(format:"%.2f",bmi?.value ?? 0.0)
        return bmiToOneDecimalString
    }
    
    
    mutating func calculateBMI(height:Float, weight:Float){
        let bmiValue = Float(Double(weight/(height * height)))
        
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Under Weight", color: .blue)
        }
        
        else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: .green)
        }
        
        else{
            bmi = BMI(value: bmiValue, advice: "Over Weight", color: .systemPink)
            
        }
        
        
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .red
    }
    
}
