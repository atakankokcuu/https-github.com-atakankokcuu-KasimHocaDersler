//
//  Kisiler.swift
//  CalismaYapisi
//
//  Created by atakan kökçü on 13.01.2024.
//

import Foundation
class Kisiler {
    var ad : String?
    var yas : Int?
    var boy : String?
    var bekar : Bool?
    
    init() {
    }
    
    init(ad: String, yas: Int, boy: String, bekar: Bool) {
        self.ad = ad
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
    
}
