//
//  ItemCell.swift
//  MyEnvironment
//
//  Created by Marko Dimitrijevic on 30/03/2019.
//  Copyright © 2019 Marko Dimitrijevic. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    func update(withItem item: Item) {
        DispatchQueue.global(qos: .background).async { [weak self] in
            if let fetchImage = UIImage.init(named: item.name) {
                DispatchQueue.main.async { [weak self] in
                    self?.imageView.image = fetchImage
                }
            }
        }
    }
}
