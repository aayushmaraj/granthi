//
//  CollectionListCell.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 24/5/21.
//

import UIKit

class CollectionListCell: UITableViewCell {
    
    
    let selectionBtn: UIButton = {
        let sb = UIButton(type: .system)
        sb.setImage(UIImage(named: "unselected")?.withRenderingMode(.alwaysOriginal) ,for: .normal)
        return sb
    }()
    
    let container: UIView = {
        let co = UIView()
        return co
    }()
    
    
    let coinImg: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Image"))
        return image
    }()
    
    let coinName = CustomLabel(title: "Etherum", textColor: AppColors.headingFourD, numberOfLines: 1, textAlignment: .left, font: UIFont.aeonikMedium(ofSize: 14))
    
    let coinNameAbr = CustomLabel(title: "ETH", textColor: AppColors.headingFourA, numberOfLines: 1, textAlignment: .left, font: UIFont.aeonikRegular(ofSize: 12))
    
    let price = CustomLabel(title: "$ 59611.70", textColor: AppColors.headingOne, numberOfLines: 1, textAlignment: .right, font: UIFont.aeonikMedium(ofSize: 16))
    
    let marketStatusPercentage = CustomLabel(title: "5.1%", textColor: AppColors.statsUpColor, numberOfLines: 1, textAlignment: .left, font: .aeonikMedium(ofSize: 16), padding: .zero, backgroundColor: nil)
    
    let marketStatusIcon : UIImageView = {
        let ms = UIImageView(image: UIImage(named: "down-filled")?.withRenderingMode(.alwaysTemplate))
        ms.tintColor = AppColors.statsUpColor
        ms.constrainHeight(constant: 12)
        return ms
        
    }()
   
    let seperator: UIView = {
        let v = UIView()
        v.backgroundColor = AppColors.headingFourB
//        seperator color leko chaina
        
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.isUserInteractionEnabled = false
        backgroundColor = .clear
        setuplayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   fileprivate func setuplayout()  {
//    addSubview(selectionBtn)
//    selectionBtn.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 0, left: 16, bottom: 0, right: 0),size: .init(width: 20, height: 20))
//    selectionBtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
    
    addSubview(container)
    container.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 16, bottom: 0, right: 0), size: .init(width: 44, height: 44))
    container.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
    container.addSubview(coinImg)
    coinImg.anchor(top: nil, leading: container.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 0, left: 4, bottom: 0, right: 0),size: .init(width: 50, height: 50))
    
    container.addSubview(coinName)
    coinName.anchor(top: nil, leading: coinImg.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 14, bottom: 0, right: 0), size: .zero)
    
    container.addSubview(coinNameAbr)
    coinNameAbr.anchor(top: coinName.bottomAnchor, leading:coinImg.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 5, left: 14, bottom: 0, right: 0), size: .zero)
    
    container.addSubview(price)
    price.anchor(top: nil, leading: nil, bottom: nil, trailing:trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 16), size: .zero)
    
    let marketStatusStackView = HorizontalStackView(arrangedSubviews: [marketStatusPercentage,marketStatusIcon], spacing: 6)
    container.addSubview(marketStatusStackView)
    marketStatusStackView.anchor(top: price.bottomAnchor, leading: nil, bottom: nil, trailing:trailingAnchor, padding: .init(top: 5, left: 0, bottom: 0, right: 16))
    
    addSubview(seperator)
    seperator.anchor(top:nil, leading: container.leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 16), size: .init(width: 0, height: 0.7))
        
    }
}
