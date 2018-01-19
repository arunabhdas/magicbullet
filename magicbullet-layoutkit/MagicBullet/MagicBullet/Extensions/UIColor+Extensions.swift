//
//  UIColorExtensions.swift
//
//

import Foundation
import UIKit

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    static var magicbulletPrimaryColor: UIColor {
        return UIColor(red:0.0605, green:0.178, blue:0.273, alpha:1.00)
    }
}
