//
//  CustomTextField.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 01/03/2022.
//


import Foundation
import UIKit

@IBDesignable
class  CustomTextField: UITextField {
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
                updateViewLeftImage()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0{
        didSet{
            updateViewLeftImage()
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            updateViewRightImage()
        }
    }
    
    @IBInspectable var rightPadding: CGFloat = 0{
        didSet{
            updateViewRightImage()
        }
    }
    
    
    func updateViewLeftImage() {
        
        if let image = leftImage{
            leftViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            imageView.tintColor = tintColor
            imageView.contentMode = .scaleAspectFit
            imageView.backgroundColor = UIColor.clear
            var width = leftPadding + 20
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                 width += 5
            }
            
            let view = UIView(frame: CGRect(x:0, y: 0, width: width, height: 20))
            
            view.addSubview(imageView)
            
            leftView = view
        }else {
            //Image is nil
            leftViewMode = .never
            
        }
        
        layer.borderWidth = CGFloat(1.0)
        layer.borderColor = UIColor.red.cgColor
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedString.Key.foregroundColor: tintColor!])
    }
    
    func updateViewRightImage() {
        
        if let image = rightImage{
            rightViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: rightPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            imageView.tintColor = tintColor
            imageView.contentMode = .scaleAspectFit
            imageView.backgroundColor = UIColor.clear
            var width = rightPadding - 20
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                 width += 5
            }
            
            let view = UIView(frame: CGRect(x:0, y: 0, width: width, height: 20))
            
            view.addSubview(imageView)
            
            rightView = view
        }else {
            //Image is nil
            rightViewMode = .never
            
        }
        
        
    }

}
