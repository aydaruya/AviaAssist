//
//  CTOT.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class CTOT: UIViewController {
    
    @IBOutlet weak var standardTimeOfDeparturePicker: UIDatePicker!
    @IBOutlet weak var calculatedTimeOfTakeoffPicker: UIDatePicker!
    @IBOutlet weak var doorCloseTimeLabel: UILabel!
    @IBOutlet weak var standardPushbackTimeLabel: UILabel!

    //This function is called when the submit button is pressed
    @IBAction func onSubmitButtonPressed(_ sender: UIButton) {
        calculateTimes()
    }
    
    private func calculateTimes() {
        //Currently dummy values for
        let doorCloseMinutesBeforeDeparture = 10 //door closes 10 minutes before departure
        let pushbackMinutesBeforeDeparture = -15 //pushback is 15 minutes after the standard time of departure

        let standardTimeOfDeparture = standardTimeOfDeparturePicker.date
        let calculatedTimeOfTakeoff = calculatedTimeOfTakeoffPicker.date
        
        //calculate door close time and pushback time based on standardTimeOfDeparture
        let doorCloseTime = Calendar.current.date(byAdding: .minute, value: -doorCloseMinutesBeforeDeparture, to: standardTimeOfDeparture)
        let standardPushbackTime = Calendar.current.date(byAdding: .minute, value: pushbackMinutesBeforeDeparture, to: calculatedTimeOfTakeoff)

        //update the labels with the calculated times
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .short
        
        if let doorCloseTime = doorCloseTime, let standardPushbackTime = standardPushbackTime {
            doorCloseTimeLabel.text = "Door close time: \(timeFormatter.string(from: doorCloseTime))"
            standardPushbackTimeLabel.text = "Standard pushback time: \(timeFormatter.string(from: standardPushbackTime))"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize labels
        doorCloseTimeLabel.text = "Door close time:"
        standardPushbackTimeLabel.text = "Standard pushback time:"
    }
}
