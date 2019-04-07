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
                      "Things", "Schoolequipment", "Bathroom", "Kitchen",
                      "Animals", "Transport", "Activities", "Rewards"]
    
    var categories: [String: [String]] = [
        "Food": ["apple", "banana", "cake", "cookies",
                 "chocolate", "popcorn", "smoki", "spagetthi",
                 "soup", "meat", "frenchfries", "sandwich"],
        
        "Drinks": ["beer", "cedevita", "cocacola", "coffie",
                   "lemonade", "milk", "nestea", "orangejeuce",
                   "soda", "tea", "water", "yogurt"],
        
        "Clothes": ["cap", "shal", "gloves", "jacket",
                    "pijamas", "pulover", "shirt", "shorts",
                    "socks", "tshirt", "underpants", "pants"],
        
        "Shoes": ["boots", "sandals", "shoes", "sleepers", "sneakers"],
        
        "Things": ["backpack", "blanket", "chair", "computer",
                    "desk", "hanger", "mirror", "mobile",
                    "pillow", "clipper", "shelf", "tv"],
        
        "Schoolequipment": ["acrylicpaint", "backpack", "books", "flomaster",
                            "glue", "notes", "pencil", "pencilbox",
                            "racunaljka", "rubber", "scissors", "sharpener"],
        
        "Bathroom": ["bathtub", "hairbrush", "hairdryer", "shampoo",
                     "showercabin", "soap", "toaletpaper", "toilet",
                     "toothbrush", "toothpaste", "towel", "washbasin"],
        
        "Kitchen": ["bowl", "cooker", "cup", "fork",
                    "fridge", "glass", "kitchensink", "knife",
                    "plate", "pot", "showcase", "spoon"],
        
        "Transport": ["bike", "boat", "bus", "car",
                      "motorbike", "plane", "rollers", "ship",
                      "train", "tram", "trotinet", "truck"],
        
        "Activities": ["blowingbubbles", "jumpingball", "jumpingontrampoline", "musiclistening",
                       "painting", "playingbasketball", "readingbook", "ridingbike",
                       "ridingrollers", "swimming", "toyplaying", "watchingtv"],
        
        "Rewards": ["car", "cartoons", "grisine", "handcream",
                    "juice", "jumpingball", "mobilegames", "music",
                    "plastelin", "popcorn", "scotchtape", "smoki"],
        
        "Animals": ["dog", "cat", "horse", "rabbit",
                    "rooster", "chicken", "cow", "goat",
                    "sheep", "bear", "monkey", "mouse", "bird"]
        
        
    ]
    // ... implement me.... //
}
