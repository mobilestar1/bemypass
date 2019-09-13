//
//  Plane.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import Foundation

class Plane {
    var fromCancelTime: String
    var fromTime: String
    var fromCName: String
    var fromAddress: String
    var toCancelTime: String
    var toTime: String
    var toCName: String
    var toAddress: String
    var avatarImage: String
    var userName: String
    var userPhone: String
    var planeNo: String
    var flag: Bool
    
    init(fromCancelTime: String, fromTime: String, fromCName: String, fromAddress: String, toCancelTime: String, toTime: String, toCName: String, toAddress: String, avatarImage: String, userName: String, userPhone: String, planeNo: String, flag: Bool) {
        self.fromCancelTime = fromCancelTime
        self.fromTime = fromTime
        self.fromCName = fromCName
        self.fromAddress = fromAddress
        self.toCancelTime = toCancelTime
        self.toTime = toTime
        self.toCName = toCName
        self.toAddress = toAddress
        self.avatarImage = avatarImage
        self.userName = userName
        self.userPhone = userPhone
        self.planeNo = planeNo
        self.flag = flag
    }
}
