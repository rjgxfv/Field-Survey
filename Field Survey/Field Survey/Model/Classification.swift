//
//  Classification.swift
//  Field Survey
//
//  Created by Robert Graman on 11/16/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

enum Classification: String, Codable{
    case reptile
    case plant
    case mammal
    case insect
    case fish
    case bird
    case amphibian
    
    var image :UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
