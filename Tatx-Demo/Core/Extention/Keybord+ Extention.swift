//
//  Keybord+ Extention.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 01/03/2022.
//

import Foundation
import UIKit
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
