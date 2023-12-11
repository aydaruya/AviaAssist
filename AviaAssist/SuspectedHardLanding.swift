//
//  SuspectedHardLanding.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class SuspectedHardLanding: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli misafirler kaptan konuşuyor, .....….*.....…. nedeni ile pisti pas geçtik. *HAVA KOŞULLARI Uçuşumuz normal sürecinde devam etmektedir. İniş için tekrar yaklaşma yapacağız. Anlayışınız için teşekkür ederiz. Dear guests this is the captain speaking, we did cancel our approach due to .....….*.....…. * WEATHER CONDITIONS Our flight continues in normal progress. We will start another approach shortly. Thank you for your understanding."
    }
   
}
