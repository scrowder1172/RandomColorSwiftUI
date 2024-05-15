//
//  UIColor+Ext.swift
//  RandomColorUIKit
//
//  Created by SCOTT CROWDER on 5/15/24.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red: CGFloat.rnd(),
            green: CGFloat.rnd(),
            blue: CGFloat.rnd(),
            alpha: 1
        )
    }
}
