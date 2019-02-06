//  FirstViewController.swift
//  Work Smart
//
//  Created by Will Langas on 1/8/19.
//  Copyright © 2019 Will Langas. All rights reserved.

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet weak var Picker2: UIPickerView!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        textField.text = Int(sender.value).description
    }
    
    let classes = ["Elective","Engineering","English","Foreign Language","History", "Math", "Science","Break","Other"]
    
    override func viewDidLoad() {
        
        Picker2.delegate = self
        Picker2.dataSource = self
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 360
        
        super.viewDidLoad()
        title = "Manual Track"
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in Picker2: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ Picker2: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return classes.count
    }
    
    func pickerView(_ Picker2: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return classes[row]
    }
    
    
    
}

@IBDesignable class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }
}
