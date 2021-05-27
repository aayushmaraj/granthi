//
//  HorizontalStackView.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 7/5/21.
//

import UIKit

class HorizontalStackView: UIStackView {
    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .horizontal
        
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
