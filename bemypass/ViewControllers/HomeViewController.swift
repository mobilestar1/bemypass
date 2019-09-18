//
//  HomeViewController.swift
//  bemypass
//
//  Created by Mobile Star on 9/13/19.
//  Copyright © 2019 Mobile Star. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var quickActionsAry = [QuickActions]()
    var planeAry = [Plane]()
    var nearbyAirPlaneAry = [NearbyAirPort]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var quickActionsCollectionView: UICollectionView!
    @IBOutlet weak var followingCollectionView: UICollectionView!
    @IBOutlet weak var nearByCollectionView: UICollectionView!
    @IBOutlet weak var topViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var topView: UIView!
    var topViewTopConstraint: NSLayoutConstraint!
    
    let quickActionsCVIdentifier = "quickActionsCollectionView"
    let followingCVIdentifier = "followingCollectionView"
    let nearByCVIdentifier = "nearByCollectionView"
    var followingCollectionCellWidth = UIScreen.main.bounds.width - 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup initial data
        setupQuickActionsData()
        setupPlaneData()
        setupNearByData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Init Layout
        initLayout()
    }
    
    func initLayout() {
        
        topViewTopConstraint = topView.topAnchor.constraint(equalTo: view.topAnchor)
        NSLayoutConstraint.activate([topViewTopConstraint])
        
        // Hide keyboard when tapoutside
        self.hideKeyboardWhenTappedAround()
        // Change Search Bar
        searchView.dropShadow(cornerRadius: 5.0, color: UIColor.black, opacity: 0.2, offset: CGSize(width: 0.0, height: 2.0), radius: 4.0)
        followingCollectionView.isPagingEnabled = true
    }
    
    // Setup Fake Data
    func setupQuickActionsData() {
        quickActionsAry.append(QuickActions(imageName: "CarCompact", actionString: "Plan Commute"))
        quickActionsAry.append(QuickActions(imageName: "customer", actionString: "Pickup"))
        quickActionsAry.append(QuickActions(imageName: "Luggage", actionString: "Luggage Tag"))
    }
    
    // Setup Fake Plane Data
    func setupPlaneData() {
        planeAry.append(Plane(fromCancelTime: "00:50", fromTime: "01:50", fromCName: "AMS", fromAddress: "Amsterdam Schiphol", toCancelTime: "13:00", toTime: "14:00", toCName: "PEK", toAddress: "Beijing Capital Int’l", avatarImage: "profile_sample", userName: "Mrs Maggie Eisenhower", userPhone: "+31 4728 4492", planeNo: "AF1234", flag: true))
        planeAry.append(Plane(fromCancelTime: "14:00", fromTime: "14:00", fromCName: "PVG", fromAddress: "Shanghai Pudong", toCancelTime: "18:00", toTime: "18:00", toCName: "LHR", toAddress: "London Heathrow", avatarImage: "profile_sample", userName: "Mrs Maggie Eisenhower", userPhone: "+31 4728 4492", planeNo: "EK992", flag: false))
        planeAry.append(Plane(fromCancelTime: "14:00", fromTime: "14:00", fromCName: "PVG", fromAddress: "Shanghai Pudong", toCancelTime: "18:00", toTime: "18:00", toCName: "LHR", toAddress: "London Heathrow", avatarImage: "profile_sample", userName: "Mrs Maggie Eisenhower", userPhone: "+31 4728 4492", planeNo: "EK992", flag: false))
        planeAry.append(Plane(fromCancelTime: "14:00", fromTime: "14:00", fromCName: "PVG", fromAddress: "Shanghai Pudong", toCancelTime: "18:00", toTime: "18:00", toCName: "LHR", toAddress: "London Heathrow", avatarImage: "profile_sample", userName: "Mrs Maggie Eisenhower", userPhone: "+31 4728 4492", planeNo: "EK992", flag: false))
        planeAry.append(Plane(fromCancelTime: "14:00", fromTime: "14:00", fromCName: "PVG", fromAddress: "Shanghai Pudong", toCancelTime: "18:00", toTime: "18:00", toCName: "LHR", toAddress: "London Heathrow", avatarImage: "profile_sample", userName: "Mrs Maggie Eisenhower", userPhone: "+31 4728 4492", planeNo: "EK992", flag: false))
        planeAry.append(Plane(fromCancelTime: "14:00", fromTime: "14:00", fromCName: "PVG", fromAddress: "Shanghai Pudong", toCancelTime: "18:00", toTime: "18:00", toCName: "LHR", toAddress: "London Heathrow", avatarImage: "profile_sample", userName: "Mrs Maggie Eisenhower", userPhone: "+31 4728 4492", planeNo: "EK992", flag: false))
    }
    
    // Setup Fake Near By Data
    func setupNearByData() {
        nearbyAirPlaneAry.append(NearbyAirPort(shortName: "TXL", longName: "Berlin-Tegel"))
        nearbyAirPlaneAry.append(NearbyAirPort(shortName: "SXF", longName: "Berlin-Schönefeld"))
        nearbyAirPlaneAry.append(NearbyAirPort(shortName: "HAM", longName: "Hamburg"))
        nearbyAirPlaneAry.append(NearbyAirPort(shortName: "HAJ", longName: "Hannover"))
        nearbyAirPlaneAry.append(NearbyAirPort(shortName: "BRE", longName: "Bremen"))
        nearbyAirPlaneAry.append(NearbyAirPort(shortName: "NUE", longName: "Berlin-Tegel"))
    }
    
}

// Collection View Extension
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case quickActionsCollectionView:
            return CGSize(width: 145, height: 110)
        case followingCollectionView:
            return CGSize(width: followingCollectionCellWidth, height: 207)
        case nearByCollectionView:
            return CGSize(width: self.view.frame.width/2-15, height: 100)
        default:
            return CGSize(width: self.view.frame.width/2-8, height: 100)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case quickActionsCollectionView:
            return quickActionsAry.count
        case followingCollectionView:
            return planeAry.count
        case nearByCollectionView:
            return nearbyAirPlaneAry.count
        default:
            return quickActionsAry.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case quickActionsCollectionView:
            let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: quickActionsCVIdentifier, for: indexPath) as! QuickActionCollectionViewCell
            let quickActionData = quickActionsAry[indexPath.row]
            myCell.itemImageView.image = UIImage(named: quickActionData.imageName)
            myCell.itemText.text = quickActionData.actionString
            
            // Add corner radius and box shadow
            myCell.configure()
            
            return myCell
        case followingCollectionView:
            let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: followingCVIdentifier, for: indexPath) as! FollowingCollectionViewCell
            let followingData = planeAry[indexPath.row]
            myCell.fromCancelTime.text = followingData.fromCancelTime
            myCell.fromTime.text = followingData.fromTime
            myCell.fromCName.text = followingData.fromCName
            myCell.fromAddress.text = followingData.fromAddress
            myCell.toCancelTime.text = followingData.toCancelTime
            myCell.toTime.text = followingData.toTime
            myCell.toCName.text = followingData.toCName
            myCell.toAddress.text = followingData.toAddress
            
            // Hide or show stroke view
            if (followingData.toCancelTime == followingData.toTime) {
                myCell.toCancelView.isHidden = true
            }
            if (followingData.fromCancelTime == followingData.fromTime) {
                myCell.fromCancelView.isHidden = true
            }
            
            // Set status Label depends on flag
            if (followingData.flag) {
                myCell.profileView.isHidden = false
                myCell.requestBtn.isHidden = true
                myCell.statusLabel.text = "Gate Changed"
                myCell.statusLabel.backgroundColor = UIColor.init(red: 255/255.0, green: 195/255.0, blue: 18/255.0, alpha: 1.0)
                myCell.statusLabel.textColor = UIColor.init(red: 44.0/255.0, green: 42.0/255.0, blue: 42.0/255.0, alpha: 1.0)
            } else {
                myCell.profileView.isHidden = true
                myCell.requestBtn.isHidden = false
                myCell.statusLabel.text = "On time"
                myCell.statusLabel.backgroundColor = UIColor.init(red: 0/255.0, green: 148.0/255.0, blue: 50.0/255.0, alpha: 1.0)
                myCell.statusLabel.textColor = UIColor.white
            }
            
            // Add corner radius and box shadow
            myCell.configure()
            
            myCell.addLabelConerRadius()
            
            return myCell
        case nearByCollectionView:
            let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: nearByCVIdentifier, for: indexPath) as! NearbyCollectionViewCell
            let nearbyData = nearbyAirPlaneAry[indexPath.row]
            myCell.shortName.text = nearbyData.shortName
            myCell.longName.text = nearbyData.longName
            
            // Add corner radius and box shadow
            myCell.configure()
            
            return myCell
        default:
            return UICollectionViewCell()
        }
    }
    
}

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.y
        if (y < 0) {
            topViewHeightConstraint.constant = 180-y
        } else {
            topViewTopConstraint.constant = -scrollView.contentOffset.y
        }
    }
}
