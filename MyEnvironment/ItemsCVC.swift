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
    
    var items = [Item]()
    var selectedItem: Item! {
        didSet {
            items = selectedItem.items
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
        if recognizer.direction == .left {
            print("Swiped left!")
        } else {
            print("Swiped right!")
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
    
}
