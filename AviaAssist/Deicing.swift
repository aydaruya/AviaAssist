//
//  Deicing.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class Deicing: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli misafirler kaptan konuşuyor, deicing nedeni ile pisti pas geçtik. HAVA KOŞULLARI Uçuşumuz normal sürecinde devam etmektedir. İniş için tekrar yaklaşma yapacağız. Anlayışınız için teşekkür ederiz.\n\nDear guests this is the captain speaking, we did cancel our approach due to deicing. Our flight continues in normal progress. We will start another approach shortly. Thank you for your understanding."
    }
   
}
