//
//  UIApplication+Extension.swift
//  test_RootViewController
//
//  Created by okitsu teppei on 2020/07/07.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit
import Foundation

extension UIApplication {
    var rootViewController: UIViewController? {
        guard let rootViewController = AppDelegate.shared.window?.rootViewController else { return nil }
        return rootViewController
    }
    
    var appDelegate: AppDelegate? {
        return UIApplication.shared.delegate as? AppDelegate
    }
}
