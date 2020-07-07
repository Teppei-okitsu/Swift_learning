//
//  ViewController.swift
//  Localization
//
//  Created by okitsu teppei on 2020/05/05.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func sayHello() {
        label.text = NSLocalizedString("Hello", comment: "")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

