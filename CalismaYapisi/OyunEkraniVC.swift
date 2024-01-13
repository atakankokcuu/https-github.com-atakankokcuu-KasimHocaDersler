//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by atakan kökçü on 9.01.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    var kisi: Kisiler!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            print("---Oyun Ekranı VC---")
            print("Kişi adı   : \(k.ad!)")
            print("Kişi yaşı  : \(k.yas!)")
            print("Kişi boyu  : \(k.boy!)")
            print("Kişi bekar : \(k.bekar!)")
        }
    }
    

    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "SonucEkraninaGecis", sender: nil )
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true) bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) // anasayfaya dönüş
    }
    
}
