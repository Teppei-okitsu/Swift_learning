//
//  GameViewController.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/19.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import Foundation
import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        print("GameVC_viewDidLoad\n")
    }
}

extension GameViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("リターン入力時")
        if textField.text == "かに" {
            // キーボードを閉じる
//            textField.resignFirstResponder()
            textField.text = ""
        }
        // これでも閉じる
        // textField.endEditing(true)
        return true
    }
}
