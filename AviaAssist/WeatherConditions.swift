//
//  WeatherConditions.swift
//  AviaAssist
//
//  Created by Uzay Poyraz on 10.12.2023.
//

import UIKit

class WeatherConditions: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Değerli misafirler kaptan konuşuyor, Hava Kosullari nedeni ile pisti pas geçtik. HAVA KOŞULLARI Uçuşumuz normal sürecinde devam etmektedir. İniş için tekrar yaklaşma yapacağız. Anlayışınız için teşekkür ederiz.\n\nDear guests this is the captain speaking, we did cancel our approach due to Weather Conditions. Our flight continues in normal progress. We will start another approach shortly. Thank you for your understanding."
        
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
