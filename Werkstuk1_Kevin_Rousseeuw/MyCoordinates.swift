//
//  MyCoordinates.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by Emenka on 06/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit

class MyCoordinates: NSObject {
    
    var longitude: Double
    var latitude: Double
    
    override init() {
        longitude = 0
        latitude = 0
    }
    
    init(longitude: Double, latitude: Double){
        self.longitude = longitude
        self.latitude = latitude
    }

}
