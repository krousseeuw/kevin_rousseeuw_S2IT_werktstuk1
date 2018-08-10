//
//  ItemDetailViewController.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by student on 08/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ItemDetailViewController: UIViewController, MKMapViewDelegate {

    var persoon = Persoon()
    
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var telefoonnummerLabel: UILabel!
    @IBOutlet weak var straatLijnLabel: UILabel!
    @IBOutlet weak var stadLijnLabel: UILabel!
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.naamLabel.text = persoon.volleNaam
        self.fotoImageView.image = UIImage(named: persoon.foto)
        self.telefoonnummerLabel.text = persoon.telefoonnummer
        self.straatLijnLabel.text = persoon.adres.straat + " " + String(persoon.adres.huisnummer)
        self.stadLijnLabel.text = persoon.adres.postcode + " " + persoon.adres.gemeente
        
        let coordinate: CLLocationCoordinate2D = persoon.gpscoordinaten
        
        let annotation: MyAnnotation = MyAnnotation(coordinate: coordinate, title: persoon.volleNaam)
        
        self.myMapView.addAnnotation(annotation as MKAnnotation)
        self.myMapView.selectAnnotation(annotation as MKAnnotation, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let center = CLLocationCoordinate2D(latitude: (view.annotation?.coordinate.latitude)!, longitude: (view.annotation?.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        
        mapView.setRegion(region, animated: true)
    }
}
