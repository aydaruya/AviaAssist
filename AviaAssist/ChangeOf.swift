//
//  ChangeOf.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class ChangeOf: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli yolcularımız, kaptanınız konuşuyor. Hava koşulları ve hava trafiği nedeniyle uçuş rotamızda bir değişiklik yapmamız gerekiyor. Bu durum varış süremizi az bir süre uzatabilir. Anlayışınız için teşekkür eder, rahat bir uçuş geçirmenizi dileriz.\n\nDear passengers, this is your captain speaking. Due to weather conditions and air traffic, we need to make a change in our flight path. This may slightly extend our arrival time. Thank you for your understanding and we wish you a comfortable flight."
        
    }
   
}
