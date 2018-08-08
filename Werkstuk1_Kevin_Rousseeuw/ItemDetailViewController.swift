//
//  ItemDetailViewController.swift
//  Werkstuk1_Kevin_Rousseeuw
//
//  Created by student on 08/08/2018.
//  Copyright © 2018 krousseeuw. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    var persoon = Persoon()
    
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var telefoonnummerLabel: UILabel!
    @IBOutlet weak var straatLijnLabel: UILabel!
    @IBOutlet weak var stadLijnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.naamLabel.text = persoon.voornaam + " " + persoon.naam
        self.fotoImageView.image = UIImage(named: persoon.foto)
        self.telefoonnummerLabel.text = persoon.telefoonnummer
        self.straatLijnLabel.text = persoon.adres.straat + " " + String(persoon.adres.huisnummer)
        self.stadLijnLabel.text = persoon.adres.postcode + " " + persoon.adres.gemeente
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
