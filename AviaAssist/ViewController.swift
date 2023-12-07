//
//  ViewController.swift
//  AviaAssist
//
//  Created by Ayda :) on 11/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var scriptPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scriptPicker.delegate = self
        scriptPicker.dataSource = self
    }
    
}

        extension ViewController: UIPickerViewDataSource {
            func numberOfComponents(in pickerView: UIPickerView) -> Int {
                return 1
            }
            
            func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
                return 10
            }
        }
        extension ViewController: UIPickerViewDelegate {
            func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                return "test"
            }
        }
        
        
        
        
        
        //   var pickerData = ["Weather Conditions", "Deicing or Delays", "Turbulance", "Introduction", "Emergency Procedures", "Change of Flight Path", "Special Services", "Arrivals and Customs"]
        
        
        
        
        // Do any additional setup after loading the view.
    

