//
//  UIView+Extension.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import UIKit
extension UIView {
    
    // Drop Shadow
    func dropShadow(color: UIColor, opacity: Float = 0.5, offset: CGSize, radius: CGFloat = 1) {
        layer.cornerRadius = 8.0
        clipsToBounds = true
        
        // set the shadow properties
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
}
