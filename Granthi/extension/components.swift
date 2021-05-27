//
//  components.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 8/5/21.
//

import UIKit
extension UIView {
    func dropShadow(cornerRadius: CGFloat = 16,
                    shadowColor: UIColor = UIColor(white: 0.0, alpha: 0.5),
                    shadowOffset: CGSize = CGSize(width: 0.0, height: 3.0),
                    shadowOpacity: Float = 0.3,
                    shadowRadius: CGFloat = 5) {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }

    

}
