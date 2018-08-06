//
//  Persoon.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by Emenka on 06/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit

class Persoon: NSObject {
    
    var naam: String
    var voornaam: String
    var foto: String
    var adres: Adres
    var gpscoordinaten: MyCoordinates
    var telefoonnummer: String
    
    override init() {
        naam = ""
        voornaam = ""
        foto = ""
        adres = Adres()
        gpscoordinaten = MyCoordinates()
        telefoonnummer = ""
    }
    
    init(naam: String, voornaam: String, foto: String, adres: Adres, gpscoordinaten: MyCoordinates, telefoonnummer: String){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.gpscoordinaten = gpscoordinaten
        self.telefoonnummer = telefoonnummer
    }

}
