//
//  ViewController.swift
//  COLD TEMP STORYBOARD
//
//  Created by Uzay Poyraz.
//

import UIKit

class ColdTemp: UIViewController {
    
    // Keyboard disappear action
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    // Background
        @IBOutlet weak var backgroundImage: UIImageView!

    //Uncorrected fix altitudes text fields
        @IBOutlet weak var fix1Alt: UITextField!
        @IBOutlet weak var fix2Alt: UITextField!
        @IBOutlet weak var fix3Alt: UITextField!
        @IBOutlet weak var fix4Alt: UITextField!
        @IBOutlet weak var fix5Alt: UITextField!
        @IBOutlet weak var fix6Alt: UITextField!
        @IBOutlet weak var fix7Alt: UITextField!
        @IBOutlet weak var fix8Alt: UITextField!
    
    //Corrected fix altitudes labels
        @IBOutlet weak var fix1Corrected: UILabel!
        @IBOutlet weak var fix2Corrected: UILabel!
        @IBOutlet weak var fix3Corrected: UILabel!
        @IBOutlet weak var fix4Corrected: UILabel!
        @IBOutlet weak var fix5Corrected: UILabel!
        @IBOutlet weak var fix6Corrected: UILabel!
        @IBOutlet weak var fix7Corrected: UILabel!
        @IBOutlet weak var fix8Corrected: UILabel!
    
    //Temperature and elevation text fields
        @IBOutlet weak var airportTemp: UITextField!
        @IBOutlet weak var airportElev: UITextField!
    
    //Automatic keyboard and minus sign for airport temperature text input
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        airportTemp.becomeFirstResponder()
        minusAction()
    }
    //Minus sign action
    func minusAction() {
    let minusLabel = UILabel()
        minusLabel.text = "-"
        airportTemp.leftView = minusLabel
        airportTemp.leftViewMode = UITextField.ViewMode.always
    }
    
    //Constants, variables and formula
    func formula(altitudeText: UITextField) -> String {
        // Error handling
        if (altitudeText.text?.isEmpty)! {
            return "Corrected"
        }
        if (airportElev.text?.isEmpty)!  {
            return "Enter Elevation"
        }
        if (airportTemp.text?.isEmpty)! {
            return "Enter Temperature"
        }
        let altitude = Double(altitudeText.text!)!
        let elevation = Double(airportElev.text!)!
        if altitude > 25000 {
            return "Check Altitude"
        }
        if elevation > 8400 || altitude < elevation {
            return "Check Elevation"
        }
        let temperature:Double? = Double("-" + airportTemp.text!)!
        if temperature! < -50 {
            return "Check Temperature"
        }
        let height = altitude - elevation
        let Lo = 0.00198
        let To = temperature! + Lo * elevation
        let correction = (height * ((15 - To) / ((273 + To) - (0.5 * Lo * altitude))))
        let correctedAltitude = Int(round(altitude + correction))
        let finalCorrectedAlt = String(correctedAltitude)
        return finalCorrectedAlt
    }
    // Calculate button action
    @IBAction func calcAction(_ sender: Any) {
       let display1 = formula(altitudeText: fix1Alt)
        fix1Corrected.text = display1
       
        
        let display2 = formula(altitudeText: fix2Alt)
         fix2Corrected.text = display2
       let display3 = formula(altitudeText: fix3Alt)
         fix3Corrected.text = display3
       let display4 = formula(altitudeText: fix4Alt)
         fix4Corrected.text = display4
       let display5 = formula(altitudeText: fix5Alt)
         fix5Corrected.text = display5
       let display6 = formula(altitudeText: fix6Alt)
         fix6Corrected.text = display6
       let display7 = formula(altitudeText: fix7Alt)
         fix7Corrected.text = display7
       let display8 = formula(altitudeText: fix8Alt)
         fix8Corrected.text = display8
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
}

