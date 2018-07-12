//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Ricardo Ramirez on 7/12/18.
//  Copyright © 2018 Ricardo Ramirez. All rights reserved.
//

import Foundation
import UIKit

let photoHelper = MGPhotoHelper()

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completitionHandler = {image in
            print("Handle image")
        }
        
        delegate = self
        
        tabBar.unselectedItemTintColor = .black
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        if viewController.tabBarItem.tag == 1 {
            // present photo taking action sheet
            print("take photo")
            photoHelper.presentActionSheet(from: self)
            return false
        } else {
            return true
        }
    }
}
