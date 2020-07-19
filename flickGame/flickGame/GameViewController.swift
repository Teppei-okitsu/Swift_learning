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
    @IBOutlet weak var quizLabel: UILabel!
    let quiz = Quiz()
    var quizList = [""]
    var quizCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("GameVC_viewDidLoad\n")
        inputTextField.delegate = self
        quizList = quiz.setQuizList(level: .easy)
    }
    override func viewWillAppear(_ animated: Bool) {
        quizLabel.text = quizList.first
    }
}

extension GameViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("リターン入力時")
        if textField.text == quizLabel.text {
            quizCount += 1
            textField.text = ""
            quizLabel.text = quizList[quizCount]
        }

        // キーボードを閉じる
        // textField.resignFirstResponder()
        // textField.endEditing(true)
        return true
    }
}
