//
//  NearbyCollectionViewCell.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import UIKit

class NearbyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var longName: UILabel!
    @IBOutlet weak var shortName: UILabel!
    @IBOutlet weak var parentView: UIView!
    
    
    func configure() {
        // configure box shadow and corner radius
        parentView.dropShadow(color: UIColor.black, opacity: 0.2, offset: CGSize(width: 0.0, height: 2.0), radius: 4.0)
    }
}
