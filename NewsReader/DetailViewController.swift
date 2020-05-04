//
//  DetailViewController.swift
//  NewsReader
//
//  Created by okitsu teppei on 2020/05/04.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webView.load(request)
        }
    }
    
}
