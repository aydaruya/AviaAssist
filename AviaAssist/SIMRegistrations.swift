//
//  SIMRegistrations.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//
import UIKit

class SIMRegistrations: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // initializeing picker views and label
    @IBOutlet weak var aircraftPickerView: UIPickerView!
    @IBOutlet weak var letterPickerView: UIPickerView!
    @IBOutlet weak var simRegistrationLabel: UILabel!

    //data source for picker views
    let aircrafts = ["Boeing 737", "Airbus A320", "Boeing 777", "Airbus A330", "Boeing 787 Dreamliner", "Airbus A350"]
    let letters = ["A", "B", "C", "D", "E", "F"] //all letters
    
    var simCodes: [String: [String: String]] = [
        "Boeing 737": ["A": "EU-AT344090", "B": "EU-AT1B1090", "C": "EU-AT231390", "D": "EU-AT23340", "E": "EU-A231090", "F": "EU-AT234090"],
        "Airbus A320": ["A": "EU-AA234090", "B": "EU-A2341090", "C": "EU-AA355090"],
        "Boeing 777": ["A": "EU-B771A1090", "B": "EU-B7712340", "C": "EU-B234090", "D": "EU-B231090", "E": "EU-B771E1090", "F": "EU-B7734290"],
        "Airbus A330": ["A": "EU-A23420", "B": "EU-A23B090", "C": "EU-AC23C1290"],
        "Boeing 787 Dreamliner": ["A": "EU-B78A1090", "B": "EU-B78B1090"],
        "Airbus A350": ["A": "EU-A35A1310", "B": "EU-A35B1340", "C": "EU-A25C12340"]
    ]
    
    //to keep track of all of the letters and aircrafts
    var selectedAircraft: String?
    var selectedLetter: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        aircraftPickerView.dataSource = self
        aircraftPickerView.delegate = self
        letterPickerView.dataSource = self
        letterPickerView.delegate = self
    }

    // MARK: - UIPickerViewDataSource Methods

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == aircraftPickerView {
            return aircrafts.count
        } else {
            //Show only relevant letters
            if let selectedAircraft = selectedAircraft {
                switch selectedAircraft {
                    case "Boeing 737", "Boeing 777":
                        return 6 //A-F
                    case "Airbus A320", "Airbus A330", "Airbus A350":
                        return 3 //A-C
                    case "Boeing 787 Dreamliner":
                        return 2 //A-B
                    default:
                        return 0
                }
            }
            return letters.count
        }
    }

    // MARK: - UIPickerViewDelegate Methods

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == aircraftPickerView {
            return aircrafts[row]
        } else {
            return letters[row]
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == aircraftPickerView {
            selectedAircraft = aircrafts[row]
            //reload the letter picker to update available letters
            letterPickerView.reloadAllComponents()
        } else {
            selectedLetter = letters[row]
        }
    }


    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if let aircraft = selectedAircraft, let letter = selectedLetter {
            let simRegistrationCode = generateSimRegistrationCode(for: aircraft, with: letter)
            simRegistrationLabel.text = simRegistrationCode
        } else {
            //case where not all inputs are selected
            simRegistrationLabel.text = "Please select both an aircraft and a letter."
        }
    }

    //method to generate a SIM registration code
    func generateSimRegistrationCode(for aircraft: String, with letter: String) -> String {
        if let simCodetoReturn = simCodes[aircraft]?[letter]{
            return simCodetoReturn
        } else{
            return "Sim Code Not Found"
        }
        
    }
}
