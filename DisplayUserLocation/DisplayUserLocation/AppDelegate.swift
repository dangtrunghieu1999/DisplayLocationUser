//
//  AppDelegate.swift
//  DisplayUserLocation
//
//  Created by Dang Trung Hieu on 9/30/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit
import SnapKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        return true
    }

}

