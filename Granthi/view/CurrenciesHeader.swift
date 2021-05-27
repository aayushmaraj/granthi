//
//  CurrenciesHeader.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 18/5/21.
//

import UIKit

class CurrenciesHeader: UITableViewCell {
    
    let addCurrenciesLbl = CustomLabel(title: "Add Currencies", textColor: AppColors.headingOne, numberOfLines: 1, textAlignment: .left, font: UIFont.aeonikBold(ofSize: 24))
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        addSubview(addCurrenciesLbl)
        addCurrenciesLbl.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 16, bottom: 0, right: 0), size: .zero)
        addCurrenciesLbl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
