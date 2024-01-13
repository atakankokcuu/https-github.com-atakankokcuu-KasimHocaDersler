//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by atakan kökçü on 9.01.2024.
//

import UIKit

class AnasayfaVC: UIViewController {
    
    
    

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() {    //uygulama ilk açıldığında çalışır ve 1 kere çalısır
        super.viewDidLoad()
        labelAnasayfa.text = "hoşgeldiniz"
        print("viewDidload bir kere çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) {  // sayfa her göründüğünde calısır ve sayfaya geri dönüldüğünde çalışır
        print("viewWillAppear bir kere çalıştı")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisaperar çalıştı") //sayfa her görünmez olduğunda calısır
    }
   

    
    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: "178", bekar: true)
        performSegue(withIdentifier: "OyunEkraninaGecis", sender: kisi
                     
        )
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare modu çalıştı")
        
        if segue.identifier == "OyunEkraninaGecis" {
            print("oyn ekranına geçiş çalıştı")
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    @IBAction func itemekle(_ sender: Any) {
        print("bulut seçildi")
    }
    @IBAction func addbutton(_ sender: Any) {
        print("add seçildi")
    }
}



