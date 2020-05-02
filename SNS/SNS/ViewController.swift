//
//  ViewController.swift
//  SNS
//
//  Created by okitsu teppei on 2019/01/01.
//  Copyright © 2019 okitsu teppei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func showActivityView(_ sender: UIBarButtonItem) {
        
        func showMessage() -> Void {
            print("表示完了")
        }
        
        let activityController = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: nil)
        self.present(activityController,animated: true, completion: {() -> Void in
            print("表示完了")
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

