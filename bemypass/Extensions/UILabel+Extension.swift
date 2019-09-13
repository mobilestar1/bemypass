//
//  UILabel+Extension.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import UIKit
extension UILabel{
    func roundCorners(_ corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
        self.clipsToBounds = true
    }

}
