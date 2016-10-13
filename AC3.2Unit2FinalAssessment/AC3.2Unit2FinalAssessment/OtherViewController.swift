//
//  OtherViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tong Lin on 10/6/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        _ = self.setting()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    @IBAction func sliderUpdate(_ sender: UISlider) {
        self.stepper.value = Double(sender.value)
        self.label.text = String(sender.value)
        self.textField.text = String(sender.value)
    }
    
    @IBAction func stepperUpdate(_ sender: UIStepper) {
        self.slider.value = Float(sender.value)
        self.label.text = String(sender.value)
        self.textField.text = String(sender.value)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        _ = textFieldUpdate(Int(textField.text!)!)
        return true
    }

    internal func textFieldUpdate(_ value:Int) {
        self.slider.value = Float(value)
        self.stepper.value = Double(value)
        self.label.text = String(value)
    }
    
    internal func setting(){
        self.slider.value = 50
        self.stepper.value = 50
        self.label.text = "50"
        self.textField.text = "50"
        
    }
}
