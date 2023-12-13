//
//  Emergency.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class Emergency: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli yolcularımız, acil durum prosedürlerimiz hakkında sizi bilgilendirmek istiyorum. Uçağımızda toplam ... adet acil çıkış kapısı bulunmaktadır. Oksijen maskeleri basınç düşüşü durumunda otomatik olarak açılacaktır. Yelek tipi can yeleklerimiz koltuğunuzun altında yer almakta olup, sadece kabin ekibinin talimatları üzerine kullanılmalıdır. Acil durumda sakin kalmak ve mürettebatımızın talimatlarını takip etmek hayati önem taşımaktadır. \n\nDear passengers, I would like to inform you about our emergency procedures. There are a total of ... emergency exits on this aircraft. Oxygen masks will drop down automatically if there is a decrease in cabin pressure. Life vests are located under your seat and should be used only when instructed by the cabin crew. Remaining calm and following the instructions of our crew are crucial in an emergency situation."
    }
   
}
