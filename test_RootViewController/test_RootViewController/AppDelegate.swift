//
//  AppDelegate.swift
//  test_RootViewController
//
//  Created by okitsu teppei on 2020/07/07.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    class var shared: AppDelegate {
        return UIApplication.shared.appDelegate!
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

