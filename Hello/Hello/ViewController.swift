//
//  ViewController.swift
//  Hello
//
//  Created by okitsu teppei on 2020/04/29.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var point: UILabel!
    

    @IBAction func slider(_ sender: UISlider) {
        point.text = "\(sender.value)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

