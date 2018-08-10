//
//  TableViewController.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by student on 07/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class TableViewController: UITableViewController {

    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //let adres1 = Adres(straat: "Parvis Notre-Dame", huisnummer: 6, postcode: "75004", gemeente: "Paris")
        //let coordinaten1 = CLLocationCoordinate2D(longitude: 48.853152, latitude: 2.349881)
        let persoon1 = Persoon(naam: "Frollo", voornaam: "Claude", foto: "frollo", adres: Adres(straat: "Parvis Notre-Dame", huisnummer: 6, postcode: "75004", gemeente: "Paris"), gpscoordinaten: CLLocationCoordinate2D(latitude: 48.853152, longitude: 2.349881), telefoonnummer: "0123456789")
        
        let persoon2 = Persoon(naam: "Greyjoy", voornaam: "Aeron", foto: "agreyjoy", adres: Adres(straat: "Silverdale Road", huisnummer: 1, postcode: "IM2 1AA", gemeente: "Isle of Man"), gpscoordinaten: CLLocationCoordinate2D(latitude: 54.153320, longitude: -4.500600), telefoonnummer: "0123456789")
        
        let persoon3 = Persoon(naam: "O'Brien", voornaam: "Miles", foto: "mobrien", adres: Adres(straat: "St. Columbanus' Road", huisnummer: 110, postcode: "11080", gemeente: "Dublin"), gpscoordinaten: CLLocationCoordinate2D(latitude: 53.305702, longitude: -6.250412), telefoonnummer: "0123456789")
        
        let persoon4 = Persoon(naam: "Hale", voornaam: "Bonnie", foto: "bhale", adres: Adres(straat: "92nd Street", huisnummer: 10617, postcode: "11417", gemeente: "Ozone Park"), gpscoordinaten: CLLocationCoordinate2D(latitude: 40.679336, longitude: -73.846497), telefoonnummer: "0123456789")
        
        let persoon5 = Persoon(naam: "Lie", voornaam: "Adael", foto: "adaelie", adres: Adres(straat: "Moray Street", huisnummer: 158, postcode: "4005", gemeente: "New Farm"), gpscoordinaten: CLLocationCoordinate2D(latitude: -27.470157, longitude: 153.043226), telefoonnummer: "0123456789")
        
        let persoon6 = Persoon(naam: "Dresden", voornaam: "Harry", foto: "harrydresden", adres: Adres(straat: "West Monroe Street", huisnummer: 555, postcode: "60661", gemeente: "Chicago"), gpscoordinaten: CLLocationCoordinate2D(latitude: 41.880539, longitude: -87.642105), telefoonnummer: "0123456789")
        
        personen.append(persoon1)
        personen.append(persoon2)
        personen.append(persoon3)
        personen.append(persoon4)
        personen.append(persoon5)
        personen.append(persoon6)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persoonCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = personen[indexPath.row].voornaam + " " + personen[indexPath.row].naam
        cell.imageView?.image = UIImage(named: personen[indexPath.row].foto)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarPersoonDetail" {
            let tab = segue.destination as! UITabBarController
            let details = tab.viewControllers?[0] as! ItemDetailViewController
            let nearby = tab.viewControllers?[1] as! NearbyViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            details.persoon = personen[(indexPath?.row)!]
            nearby.selectedPersoonIndex = (indexPath?.row)!
            nearby.personen = personen
        }
    }

}
