//
//  Introduction.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class Introduction: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli misafirler, kaptanınız olarak sizlere hoş geldiniz demek istiyorum. Bu uçuşumuzda sizlere hizmet verecek olmaktan büyük mutluluk duyuyorum. Uçuş ekibimiz ve ben, konforunuz ve güvenliğiniz için buradayız. Uçuş süremiz boyunca herhangi bir ihtiyacınız olursa lütfen bize bildirin. Şimdi kemerlerinizi bağlayın ve rahat bir uçuş geçirmenizi dilerim.\n\nDear guests, as your captain, I would like to welcome you aboard. It's a great pleasure to serve you on this flight. Our crew and I are here for your comfort and safety. Please let us know if you need anything during our time in the air. Now, please fasten your seatbelts and enjoy a comfortable flight."
    }
   
}
