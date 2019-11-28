//
//  ItemCell.swift
//  MyEnvironment
//
//  Created by Marko Dimitrijevic on 30/03/2019.
//  Copyright © 2019 Marko Dimitrijevic. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    private var myImage: UIImage!
    
    @IBOutlet weak var imageView: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addDoubleTapGesture()
    }
    
    func update(withItem item: Item) {
        DispatchQueue.global(qos: .background).async { [weak self] in
            if let fetchImage = UIImage.init(named: item.name) {
                DispatchQueue.main.async { [weak self] in
                    self?.imageView.image = fetchImage
                }
            }
        }
    }
    
    private func addDoubleTapGesture() {
        //let gesture = UIGestureRecognizer.init(target: self, action: #selector(doubleTapGestureRegistered))
        let gesture = UITapGestureRecognizer.init(target: self, action: #selector(doubleTapGestureRegistered))
        gesture.numberOfTapsRequired = 2
        self.addGestureRecognizer(gesture)
    }
    
    @objc private func doubleTapGestureRegistered() {
        if imageView.image != nil {
            myImage = imageView.image
            imageView.image = nil
        } else {
            imageView.image = myImage
        }
    }
}
