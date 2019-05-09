//
//  ViewController+HideKeyboard.swift
//  iOS Playground
//
//  Created by Evan Emelga on 09/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}
