//
//  CargoIMPCodes.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class CargoIMPCodes: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var codePickerView: UIPickerView!
    @IBOutlet weak var definitionLabel: UILabel!
    
    //This array contains all the codes and their definitions
    let codesAndDefinitions: [(code: String, definition: String)] = [
        // Populate this array with your codes and definitions
        ("ACT", "Certified Active Temperature-Controlled Thermal Container"),
        ("AOG", "Spare Parts for the Aircraft on Ground"),
        ("BAL", "Balance Weight"),
        ("BED", "Seat Reserved for the Stretcher and Number of Passengers Traveling on These Seats"),
        ("BEH", "Stretcher loaded in the Compartment"),
        ("BUP", "Outsized Loads placed on Two or More Pallets"),
        ("CAO", "Dangerous Goods Tagged as 'Cargo Aircraft Only'"),
        ("CAT", "Cargo Crew Member on the Cargo Aircraft"),
        ("CBG", "Cabin Load included in the Traffic Load"),
        ("COL", "Cool storage at 2-8°C"),
        ("COM", "Company Mail carried inside the cabin or in the compartment"),
        ("COV", "COVID-19 Vaccines"),
        ("CRT", "Controlled room temperature between +15°C - +25°C"),
        ("CSU", "Catering Supplies and Foodstuff not used throughout the Flight"),
        ("DHC", "Deadheading Crew"),
        ("DIP", "Diplomatic Mail/Diplomatic Cargo"),
        ("EAT", "Foodstuff for Human Consumption"),
        ("EIC", "Equipment in Compartment"),
        ("ELI", "Lithium-Ion Batteries accepted for carriage under Section 2 of PI 966-967"),
        ("ELM", "Lithium-Metal Batteries accepted for carriage under Section 2 of PI 969-970"),
        ("ERT", "+20°C - +25°C default temperature range"),
        ("EXP", "Expedite Bags for baggage sent urgently"),
        ("FIL", "Undeveloped Films"),
        ("FKT", "Spare Tire (Flight Kit)"),
        ("HEA", "Heavy Cargo Weighing 150 Kg or Above Per Piece"),
        ("HEG", "Hatching Eggs"),
        ("HUM", "Human Remains in Coffin"),
        ("HBG", "Cabin Baggage Loaded in the Cargo Compartment"),
        ("ICE", "Dry Ice"),
        ("JMP", "Ticketed passenger traveling on cabin crew station"),
        ("LHO", "Living Human Organs/Blood"),
        ("MAG", "Magnetized Materials"),
        ("MOS", "Miscellaneous Operational Staff"),
        ("NIL", "No loaded and dispatched load"),
        ("OBX", "Obnoxious Load emitting a Strong Odor"),
        ("OHG", "Items overhanging from One or More Pallets"),
        ("PAD", "Passenger Available for Disembarkation with a pass ticket"),
        ("PEA", "Items listed in CITES such as Hunting Trophies, Hide, Animal Skin"),
        ("PED", "Portable Electronic Devices / Portable Medical Electronic Devices"),
        ("PEF", "Perishable Flowers"),
        ("PEM", "Perishable Fresh Meat and Meat Products"),
        ("PEP", "Fresh Fruit and Vegetables"),
        ("PER", "Perishable Cargo"),
        ("PES", "Perishable Seafood"),
        ("PIL", "Pharmaceuticals and Medical Products"),
        ("RCL", "Cryogenic liquids"),
        ("RCM", "Corrosive and Hazardous Substance (Labeled)"),
        ("RCX", "Restricted Explosives 1.3 C"),
        ("REX", "Restricted Explosives"),
        ("RFG", "Restricted Flammable Gases"),
        ("RFL", "Restricted Flammable Liquids (Labeled)"),
        ("RFS", "Restricted Flammable Solids"),
        ("RFW", "Dangerous When Wet (Labeled)"),
        ("RGX", "Restricted Explosives 1.3 G"),
        ("RIS", "Infectious Substance"),
        ("RMD", "Class Nine Miscellaneous Dangerous Goods"),
        ("RNG", "Restricted Non-Flammable/Non-Toxic Gas"),
        ("RLI", "Lithium-Ion Batteries covered by PI 965-967 Section I"),
        ("RLM", "Lithium-Metal Batteries covered by PI 968-970 Section I"),
        ("ROP", "Organic Peroxide (Labeled)"),
        ("ROX", "Oxidizers (Labeled)"),
        ("RPB", "Poison"),
        ("RPG", "Restricted Toxic Gases"),
        ("RRW", "Restricted Radioactive Material Category I – White"),
        ("RRY", "Category II and III Yellow Label Radioactive Materials"),
        ("RSB", "Polymeric Beads"),
        ("RSB", "Polymeric Beads"),
       ("RSC", "Spontaneously Combustible (Labeled)"),
       ("RXB", "Restricted Explosives 1.4 B"),
       ("RXC", "Restricted Explosives 1.4 C"),
       ("RXD", "Restricted Explosives 1.4 D"),
       ("RXE", "Restricted Explosives 1.4 E"),
       ("RXS", "Seats occupied by Baggage, Cargo and/or Mail"),
       ("SOC", "Baggage tagged with the crew baggage tag belonging to flight crew members"),
       ("SPB", "Priority Small Package"),
       ("VAL", "Valuable Cargo Such As Money, Diamonds, etc."),
       ("WBD", "Wheelchair Battery Dry"),
       ("WBL", "Wheelchair Battery Lithium-Ion"),
       ("WBW", "Wheelchair Battery Wet"),
       ("WEA", "Weapon"),
       ("WET", "Wet Materials Not Packed In Watertight Containers"),
       ("WMP", "Wheelchair Manual Powered"),
       ("XCR", "Crew On-Duty Occupying Passenger Seats"),
       ("XPS", "Priority Small Package")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        codePickerView.dataSource = self
        codePickerView.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return codesAndDefinitions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return codesAndDefinitions[row].code
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        definitionLabel.text = codesAndDefinitions[row].definition
    }
}
