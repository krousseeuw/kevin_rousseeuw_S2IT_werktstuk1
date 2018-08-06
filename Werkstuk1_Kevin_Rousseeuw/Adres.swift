//
//  Adres.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by Emenka on 06/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit

class Adres: NSObject {
    
    var straat: String
    var huisnummer: Int
    var postcode: String
    var gemeente: String

    override init() {
        straat = ""
        huisnummer = 0
        postcode = ""
        gemeente = ""
    }
    
    init(straat: String, huisnummer: Int, postcode: String, gemeente: String){
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
    
}
