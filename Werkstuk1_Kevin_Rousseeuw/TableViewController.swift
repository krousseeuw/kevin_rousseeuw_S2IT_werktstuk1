//
//  TableViewController.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by student on 07/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //let adres1 = Adres(straat: "Parvis Notre-Dame", huisnummer: 6, postcode: "75004", gemeente: "Paris")
        //let coordinaten1 = MyCoordinates(longitude: 48.853152, latitude: 2.349881)
        let persoon1 = Persoon(naam: "Frollo", voornaam: "Claude", foto: "frollo", adres: Adres(straat: "Parvis Notre-Dame", huisnummer: 6, postcode: "75004", gemeente: "Paris"), gpscoordinaten: MyCoordinates(longitude: 48.853152, latitude: 2.349881), telefoonnummer: "0123456789")
        
        let persoon2 = Persoon(naam: "Greyjoy", voornaam: "Aeron", foto: "agreyjoy", adres: Adres(straat: "Silverdale Road", huisnummer: 1, postcode: "IM2 1AA", gemeente: "Isle of Man"), gpscoordinaten: MyCoordinates(longitude: 54.153320, latitude: -4.500600), telefoonnummer: "0123456789")
        
        let persoon3 = Persoon(naam: "O'Brien", voornaam: "Miles", foto: "mobrien", adres: Adres(straat: "St. Columbanus' Road", huisnummer: 110, postcode: "11080", gemeente: "Dublin"), gpscoordinaten: MyCoordinates(longitude: 53.305702, latitude: -6.250412), telefoonnummer: "0123456789")
        
        let persoon4 = Persoon(naam: "Hale", voornaam: "Bonnie", foto: "bhale", adres: Adres(straat: "92nd Street", huisnummer: 10617, postcode: "11417", gemeente: "Ozone Park"), gpscoordinaten: MyCoordinates(longitude: 40.679336, latitude: -73.846497), telefoonnummer: "0123456789")
        
        let persoon5 = Persoon(naam: "Lie", voornaam: "Adael", foto: "adaelie", adres: Adres(straat: "Moray Street", huisnummer: 158, postcode: "4005", gemeente: "New Farm"), gpscoordinaten: MyCoordinates(longitude: -27.470157, latitude: 153.043226), telefoonnummer: "0123456789")
        
        let persoon6 = Persoon(naam: "Dresden", voornaam: "Harry", foto: "harrydresden", adres: Adres(straat: "West Monroe Street", huisnummer: 555, postcode: "60661", gemeente: "Chicago"), gpscoordinaten: MyCoordinates(longitude: 41.880539, latitude: -87.642105), telefoonnummer: "0123456789")
        
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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
