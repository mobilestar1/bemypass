//
//  QuickActionCollectionViewCell.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import UIKit

class QuickActionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemText: UILabel!
    @IBOutlet weak var parentView: UIView!
    
    func configure() {
        // configure box shadow and corner radius
        parentView.dropShadow(color: UIColor.black, opacity: 0.2, offset: CGSize(width: 0.0, height: 2.0), radius: 4.0)
    }
}
