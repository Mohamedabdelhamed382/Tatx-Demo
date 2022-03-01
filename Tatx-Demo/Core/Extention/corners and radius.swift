////
////  corners and radius.swift
////  Tatx-Demo
////
////  Created by MOHAMED ABD ELHAMED AHMED on 28/02/2022.
////
//
//import Foundation
//import UIKit
//
//
import UIKit

//@IBDesignable
extension UIView {

func round(corners: UIRectCorner, cornerRadius: Double) {
    
    let size = CGSize(width: cornerRadius, height: cornerRadius)
    let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
    let shapeLayer = CAShapeLayer()
    shapeLayer.frame = self.bounds
    shapeLayer.path = bezierPath.cgPath
    self.layer.mask = shapeLayer
    }
}
