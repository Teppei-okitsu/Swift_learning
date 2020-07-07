//
//  ViewController.swift
//  test_RootViewController
//
//  Created by okitsu teppei on 2020/07/07.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedToSubView(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "SubView", bundle: nil)
        let subVC = storyBoard.instantiateViewController(withIdentifier: "SubVC")
        AppDelegate.shared.window?.present(subVC)
    }
    
}

