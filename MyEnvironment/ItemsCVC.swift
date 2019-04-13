//
//  ItemsCVC.swift
//  MyEnvironment
//
//  Created by Marko Dimitrijevic on 30/03/2019.
//  Copyright © 2019 Marko Dimitrijevic. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ItemCell"

class ItemsCVC: UICollectionViewController {
    
    let dataProvider = DataProvider.init(dataSet: RawDataModel())
    
    private var items = [Item]()
    
    var selectedIndex: Int! {
        didSet {
            reloadItems(index: selectedIndex)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(screenSwiped))
        leftSwipe.direction = .left
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(screenSwiped))
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe); view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func screenSwiped(_ recognizer: UISwipeGestureRecognizer) {
        
        if selectedIndex == 0 && recognizer.direction == .right {
            return
        }
        if selectedIndex == items.count - 1 && recognizer.direction == .left {
            return
        }
        
        if recognizer.direction == .left {
            selectedIndex += 1
        } else {
            selectedIndex -= 1
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCell
        
        cell.update(withItem: items[indexPath.item])
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        playSound(name: items[indexPath.item].name)
    }
    
    private func reloadItems(index: Int) {
        let groupItem = dataProvider.getGroupItem(atIndex: index)
        items = dataProvider.getItems(name: groupItem.name)
        self.collectionView.reloadData()
        playSound(name: groupItem.name)
    }
    
}
