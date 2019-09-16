//
//  FollowingCollectionViewCell.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import UIKit

class FollowingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var fromCancelTime: UILabel!
    @IBOutlet weak var fromCancelView: UIView!
    @IBOutlet weak var fromTime: UILabel!
    @IBOutlet weak var fromCName: UILabel!
    @IBOutlet weak var fromAddress: UILabel!
    @IBOutlet weak var toCancelView: UIView!
    @IBOutlet weak var toCancelTime: UILabel!
    @IBOutlet weak var toTime: UILabel!
    @IBOutlet weak var toCName: UILabel!
    @IBOutlet weak var toAddress: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhone: UILabel!
    @IBOutlet weak var planeNo: UILabel!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var requestBtn: UIButton!
    @IBOutlet weak var parentView: UIView!
    
    func configure() {
        // configure box shadow and corner radius
        parentView.dropShadow(color: UIColor.black, opacity: 0.2, offset: CGSize(width: 0.0, height: 2.0), radius: 4.0)
        
    }
    
    func addLabelConerRadius() {
        statusLabel.roundCorners([.topLeft, .topRight], roundRect: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-30, height: statusLabel.frame.height), radius: 8.0)
    }
}
