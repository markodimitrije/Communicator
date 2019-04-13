//
//  Model.swift
//  MyEnvironment
//
//  Created by Marko Dimitrijevic on 30/03/2019.
//  Copyright © 2019 Marko Dimitrijevic. All rights reserved.
//

import Foundation

protocol DataProviding {
    func getItems(name: String) -> [Item]
    func getGroupItem(atIndex index: Int) -> Item
    func getItem(groupIndex: Int, itemIndex index: Int) -> Item?
}

struct Item {
    var name = ""
    var audioUrl: String?
    var items = [Item]()
    init?(name: String, items: [Item] = [ ]) {
        self.name = name
        self.audioUrl = name + ".mp3" // implement me...
        self.items = items
    }
}

class DataProvider: DataProviding {
    
    var dataSet: RawDataModel
    var groupItems = [Item]()
    
    func getGroupItem(atIndex index: Int) -> Item {
        return groupItems[index]
    }
    func getItem(groupIndex: Int, itemIndex index: Int) -> Item? {
        let name = dataSet.groupNames[index]
        return Item.init(name: name, items: getItems(name: name))
    }
    func getItems(name: String) -> [Item] {
        return dataSet.categories[name]?.compactMap({ name -> Item? in
            return Item.init(name: name)
        }) ?? [ ]
    }
    
    init(dataSet: RawDataModel) {
        
        self.dataSet = dataSet
        groupItems = dataSet.groupNames.compactMap({ name -> Item? in
            let items = getItems(name: name)
            return Item.init(name: name, items: items)
        })
        
    }
    
}
