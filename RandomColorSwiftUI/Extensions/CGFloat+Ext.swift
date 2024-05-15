//
//  CGFloat+Ext.swift
//  RandomColorUIKit
//
//  Created by SCOTT CROWDER on 5/15/24.
//

import UIKit

extension CGFloat {
    static func rnd(from min: CGFloat = 0, to max: CGFloat = 1) -> CGFloat {
        return CGFloat.random(in: min...max)
    }
}
