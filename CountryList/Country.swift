//
//  Country.swift
//  CountryList
//
//  Created by Juan Pablo on 9/8/17.
//  Copyright © 2017 Juan Pablo Fernandez. All rights reserved.
//

import UIKit

class Country: NSObject {
    
    public var countryCode: String
    public var phoneExtension: String
    
    init(countryCode: String, phoneExtension: String) {
        self.countryCode = countryCode
        self.phoneExtension = phoneExtension
    }
    
    var name: String? {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: countryCode) ?? nil
    }
}
