//
//  GroupsCVC.swift
//  MyEnvironment
//
//  Created by Marko Dimitrijevic on 30/03/2019.
//  Copyright © 2019 Marko Dimitrijevic. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ItemCell"

class GroupsCVC: UICollectionViewController {

    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let data = DataProvider.init(dataSet: RawDataModel())
        
        items = data.groupItems
        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

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

    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let itemsCVC = mainSB.instantiateViewController(withIdentifier: "ItemsCVC") as? ItemsCVC {
            let item = items[indexPath.row]
            itemsCVC.selectedItem = item
            navigationController?.pushViewController(itemsCVC, animated: true)
            playSound(name: item.name)
        }
    }

}
