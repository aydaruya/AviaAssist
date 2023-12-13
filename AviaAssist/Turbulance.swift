//
//  Turbulance.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class Turbulance: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli misafirler kaptan konuşuyor, HAVA KOŞULLARI nedeniyle biraz türbülans yaşıyoruz. Bu durumun geçici olduğunu ve en kısa sürede normale döneceğimizi belirtmek isterim. Sabrınız ve anlayışınız için teşekkür ederiz.\n\nDear guests, this is the captain speaking. We are experiencing some turbulence due to WEATHER CONDITIONS, which I assure you is temporary and should subside shortly. Thank you for your patience and understanding."
    }
   
}
