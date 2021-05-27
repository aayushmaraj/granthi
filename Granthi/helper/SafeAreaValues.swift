//
//  SafeAreaValues.swift
//  Granthi
//
//  Created by roshan lamichhane on 01/04/2021.
//

import UIKit

var safeAreaWindow: UIWindow?

struct SafeAreaValues {
    static let top = safeAreaWindow?.safeAreaInsets.top ?? 0
    static let left = safeAreaWindow?.safeAreaInsets.left ?? 0
    static let bottom = safeAreaWindow?.safeAreaInsets.bottom ?? 0
    static let right = safeAreaWindow?.safeAreaInsets.right ?? 0
}
