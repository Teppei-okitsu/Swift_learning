//
//  UIWindow+Extension.swift
//  test_RootViewController
//
//  Created by okitsu teppei on 2020/07/07.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import Foundation
import UIKit

extension UIWindow {
    
    func setRootViewController(newRootViewController: UIViewController, transition: CATransition? = nil) {
        
        let previousViewController = rootViewController
        
        if let transition = transition {
            // Add the transition
            layer.add(transition, forKey: kCATransition)
        }
        
        rootViewController = newRootViewController
        
        // Update status bar appearance using the new view controllers appearance - animate if needed
        if UIView.areAnimationsEnabled {
            UIView.animate(withDuration: CATransaction.animationDuration()) {
                newRootViewController.setNeedsStatusBarAppearanceUpdate()
            }
        } else {
            newRootViewController.setNeedsStatusBarAppearanceUpdate()
        }
        
        if #available(iOS 13.0, *) {
            // iOS 13 or later we don't want to remove the transition view as it'll create a blank screen
        } else {
            // The presenting view controllers view doesn't get removed from the window as its currently transistioning and presenting a view controller
            if let transitionViewClass:AnyClass = NSClassFromString("UITransitionView") {
                for subview in subviews where subview.isKind(of: transitionViewClass) {
                    subview.removeFromSuperview()
                }
            }
        }
        if let previousViewController = previousViewController {
            // Allow the view controller to be deallocated
            previousViewController.dismiss(animated: false) {
                // Remove the root view in case its still showing
                previousViewController.view.removeFromSuperview()
            }
        }
    }
    
    func present(_ viewControllerToPresent: UIViewController, completion: (() -> Swift.Void)? = nil) {
        setRootViewController(newRootViewController: viewControllerToPresent)
        completion?()
    }
}


