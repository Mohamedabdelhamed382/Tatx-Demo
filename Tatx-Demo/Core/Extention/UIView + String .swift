//
//  UIView + String .swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 01/03/2022.
//

import Foundation
import UIKit

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString =  NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0,attributeString.length))
        return attributeString
    }
}
