//
//  SubViewController.swift
//  test_RootViewController
//
//  Created by okitsu teppei on 2020/07/07.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import Foundation

import UIKit

class SubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedToMainView(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyBoard.instantiateViewController(withIdentifier: "MainVC")
        AppDelegate.shared.window?.present(mainVC)
    }
    
}
