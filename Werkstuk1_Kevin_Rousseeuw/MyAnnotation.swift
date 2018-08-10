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
    
    // Reference from: https://stackoverflow.com/questions/35199363/sort-array-by-calculated-distance-in-swift
    var location: CLLocation {
        return CLLocation(latitude: self.coordinate.latitude, longitude: self.coordinate.longitude)
    }
    
    func distance(to location: CLLocation) -> CLLocationDistance {
        return location.distance(from: self.location)
    }
    
    override init() {
        coordinate = CLLocationCoordinate2D()
        title = ""
    }
    
    init (coordinate: CLLocationCoordinate2D, title:String) {
        self.coordinate = coordinate
        self.title = title
    }
}
