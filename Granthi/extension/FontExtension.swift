//
//  FontExtension.swift
//  Granthi
//
//  Created by roshan lamichhane on 01/04/2021.
//

import UIKit

extension UIFont {
    private static func customFont(name: String, size: CGFloat) -> UIFont {
        let font = UIFont(name: name, size: size)
        //       assert(font != nil, "Can’t load font: \(name)")
        return font ?? UIFont.systemFont(ofSize: size)
    }
    
    static func aeonikRegular(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Aeonik-Regular", size: size)
    }
    
    static func aeonikMedium(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Aeonik-Medium", size: size)
    }
    
    static func aeonikBold(ofSize size: CGFloat) -> UIFont {
        return customFont(name: "Aeonik-Bold", size: size)
    }
}


