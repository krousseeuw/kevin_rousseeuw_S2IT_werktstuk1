//
//  NearbyViewController.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by student on 10/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class NearbyViewController: UIViewController, MKMapViewDelegate {

    var personen = [Persoon]()
    var annotations = [MyAnnotation]()
    var coordinates = [CLLocationCoordinate2D]()
    var selectedPersoonIndex: Int = 0
    
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        for persoon in personen {
            let coordinate: CLLocationCoordinate2D = persoon.gpscoordinaten
            
            let volleNaam = persoon.voornaam + " " + persoon.naam
            
            let annotation: MyAnnotation = MyAnnotation(coordinate: coordinate, title: volleNaam)
            
            annotations.append(annotation)
        }
        
        let mylocation = CLLocation(latitude: personen[selectedPersoonIndex].gpscoordinaten.latitude, longitude: personen[selectedPersoonIndex].gpscoordinaten.longitude)
        
        annotations.sort(by: { $0.distance(to: mylocation) < $1.distance(to: mylocation) })
        
        //let coordinate: CLLocationCoordinate2D = persoon.gpscoordinaten
        
        //let annotation: MyAnnotation = MyAnnotation(coordinate: coordinate, title: volleNaam)
        
        self.myMapView.addAnnotations(annotations)
        self.myMapView.selectAnnotation(annotations[0] as MKAnnotation, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let center = CLLocationCoordinate2D(latitude: (view.annotation?.coordinate.latitude)!, longitude: (view.annotation?.coordinate.longitude)!)
        let delta = 40.0
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta))
        
        mapView.setRegion(region, animated: true)
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
