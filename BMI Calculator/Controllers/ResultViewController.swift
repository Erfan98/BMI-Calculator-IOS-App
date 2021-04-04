//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Erfan Ahmed Siam on 04/04/2021.
//  
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var backgroundView: UIImageView!
    
    var bmivalue:String?
    var bmiColor:UIColor?
    var bmiAdvice:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmivalue
        adviceLabel.text = bmiAdvice
        backgroundView.backgroundColor = bmiColor
    }
    
    @IBAction func reCalculateButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
