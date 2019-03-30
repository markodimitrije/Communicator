//
//  Data.swift
//  MyEnvironment
//
//  Created by Marko Dimitrijevic on 30/03/2019.
//  Copyright © 2019 Marko Dimitrijevic. All rights reserved.
//

import Foundation

struct RawDataModel {
    let groupNames = ["Food", "Clothes", "Shoes", "Drinks",
                      "Things", "SchoolEquipment", "Bathroom", "Kitchen",
                      "Animals", "Shapes", "Activities", "Rewards"]
    
    var categories: [String: [String]] = [
        "Food": ["apple", "banana", "spagetthi", "cake",
                 "cookies", "chocolate", "popcorn", "smoki",
                 "soup", "meat", "frenchfries", "sandwich"],
        "Clothes": ["shirt", "socks", "jacket", "pulover",
                    "", "", "", "",
                    "", "", "", ""]
    ]
    // ... implement me.... //
}
