//
//  ArrivalsAndCustoms.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class ArrivalsAndCustoms: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli yolcularımız, varışımıza yaklaşıyoruz. Lütfen gümrük ve pasaport kontrolü için gerekli evraklarınızı hazır bulundurunuz. Yolcu salonuna ulaştıktan sonra, varış kartlarınızı ve pasaportlarınızı görevlilere ibraz ediniz. Gümrük kuralları ve sınırlamalar hakkında herhangi bir sorunuz olursa, lütfen terminaldeki görevlilere danışın. Uçuşumuzu tercih ettiğiniz için teşekkür ederiz.\n\nDear passengers, we are approaching our destination. Please have your documents ready for customs and passport control. Upon reaching the arrivals hall, present your landing cards and passports to the officers. If you have any questions about customs regulations and restrictions, please consult the officials at the terminal. Thank you for flying with us."
    }
   
}
