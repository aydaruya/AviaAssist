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
        lbl.text = "Değerli yolcularımız, kaptanınız konuşuyor. Önümüzdeki inişimizin biraz sert olabileceğini belirtmek isterim. Güvenliğiniz için, lütfen kemerlerinizi sıkıca bağlayın ve iniş sırasında oturduğunuz yerde kalın. Kabin ekibimiz, iniş için gerekli tüm güvenlik önlemlerini almıştır. Anlayışınız ve işbirliğiniz için teşekkür ederiz.\n\nDear passengers, this is your captain speaking. I would like to inform you that our upcoming landing may be a bit rough. For your safety, please fasten your seatbelts securely and remain seated during the landing. Our cabin crew has taken all necessary safety precautions for the landing. Thank you for your understanding and cooperation."
    }
   
}
