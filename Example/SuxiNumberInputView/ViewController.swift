//
//  ViewController.swift
//  SuxiNumberInputView
//
//  Created by sadwx on 08/03/2017.
//  Copyright (c) 2017 sadwx. All rights reserved.
//

import UIKit

import SuxiNumberInputView

class ViewController: UIViewController, SuxiNumberInputViewDelegate {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let inputView = SuxiNumberInputView.load(with: textField)
        inputView?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MAKR: SuxiNumberInputViewDelegate
    func suxiNumberInputView(_ inputView: SuxiNumberInputView, pressedKey keyCode: SuxiNumberKeyCode) {
        print("\(keyCode) pressed")
    }
}

