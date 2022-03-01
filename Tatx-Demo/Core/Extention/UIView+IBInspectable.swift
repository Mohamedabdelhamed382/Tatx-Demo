//
//  UIView+IBInspectable.swift
//  EmiratesParking
//
//  Created by sameh on 8/18/20.
//  Copyright © 2020 mongy. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable
    var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }

    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }

    @IBInspectable
    var shadowOffset: CGSize {
        get {
            layer.shadowOffset
        } set {
            layer.shadowOffset = newValue
        }
    }

    @IBInspectable
    var shadowColor: UIColor {
        get {
            UIColor(cgColor: layer.shadowColor!)
        }
        set {
            layer.shadowColor = newValue.cgColor
        }
    }

    @IBInspectable
    var shadowOpacity: Float {
        get {
            layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
}
