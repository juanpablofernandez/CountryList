//
//  Country.swift
//  CountryListExample
//
//  Created by Juan Pablo on 9/8/17.
//  Copyright © 2017 Juan Pablo Fernandez. All rights reserved.
//

import UIKit

class Country: NSObject {
    
    public var countryCode: String
    public var phoneExtension: String
    
    var name: String? {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: countryCode) ?? nil
    }
    
    var flag: String? {
        return flag(country: countryCode)
    }
    
    init(countryCode: String, phoneExtension: String) {
        self.countryCode = countryCode
        self.phoneExtension = phoneExtension
    }
    
    private func flag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
}
