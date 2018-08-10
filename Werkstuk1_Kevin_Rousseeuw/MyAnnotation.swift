//
//  MyAnnotations.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by student on 10/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MyAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    override init() {
        coordinate = CLLocationCoordinate2D()
        title = ""
    }
    
    init (coordinate: CLLocationCoordinate2D, title:String) {
        self.coordinate = coordinate
        self.title = title
    }
}
