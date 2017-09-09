//
//  ViewController.swift
//  CountryListExample
//
//  Created by Juan Pablo on 9/8/17.
//  Copyright © 2017 Juan Pablo Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CountryListDelegate {

    @IBOutlet weak var selectedCountryLabel: UILabel!
    
    var countryList = CountryList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryList.delegate = self
    }
    
    @IBAction func handleCountryList(_ sender: Any) {
        let navController = UINavigationController(rootViewController: countryList)
        self.present(navController, animated: true, completion: nil)
    }
    
    func selectedCountry(country: Country) {
        self.selectedCountryLabel.text = "\(country.flag!) \(country.name!), \(country.countryCode), \(country.phoneExtension)"
    }
}

