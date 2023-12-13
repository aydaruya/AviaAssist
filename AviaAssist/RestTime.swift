//
//  RestTime.swift
//  AviaAssist
//
//  Created by Ayda :) on 12/7/23.
//

import UIKit

class RestTime: UIViewController {
    
    @IBOutlet weak var numPilotsTextField: UITextField!
    @IBOutlet weak var hoursTextField: UITextField!
    @IBOutlet weak var minutesTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    
    @objc func submit() {
        //Check if all fields have valid input
        guard let numberOfPilotsText = numPilotsTextField.text,
              let numberOfPilots = Int(numberOfPilotsText),
              let hoursText = hoursTextField.text,
              let hours = Int(hoursText),
              let minutesText = minutesTextField.text,
              let minutes = Int(minutesText) else {
            outputLabel.text = "Invalid input. Please enter valid numbers."
            return
        }
        
        // total flight duration in minutes
        let totalFlightDuration = hours * 60 + minutes
        
        // flight time per pilot
        let flightTimePerPilot = Double(totalFlightDuration) / Double(numberOfPilots)
        
        // result
        outputLabel.text = "Each pilot will fly for \(flightTimePerPilot) minutes."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //connecting the submitButton to the submit function
        submitButton.addTarget(self, action: #selector(submit), for: .touchUpInside)
    }
}
    
