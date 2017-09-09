//
//  CountryCell.swift
//  CountryListExample
//
//  Created by Juan Pablo on 9/8/17.
//  Copyright © 2017 Juan Pablo Fernandez. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {
    
    var nameLabel: UILabel?
    var extensionLabel: UILabel?
    
    var country: Country? {
        didSet {
            if let name = country!.name {
                nameLabel?.text = "\(name)"
                extensionLabel?.text = "+\(country!.phoneExtension)"
            }
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        self.nameLabel?.text = ""
        self.extensionLabel?.text = ""
    }
    
    func setup() {
        
        nameLabel = UILabel()
        nameLabel?.textColor = UIColor.black
        nameLabel?.font = UIFont.systemFont(ofSize: 20)
        nameLabel?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameLabel!)
        
        nameLabel?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameLabel?.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        
        extensionLabel = UILabel()
        extensionLabel?.textColor = UIColor.gray
        extensionLabel?.font = UIFont.systemFont(ofSize: 18)
        extensionLabel?.translatesAutoresizingMaskIntoConstraints = false
        addSubview(extensionLabel!)
        extensionLabel?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        extensionLabel?.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
    }
}
