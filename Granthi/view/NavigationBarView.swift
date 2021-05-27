//
//  NavigationBarView.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 6/5/21.
//

import UIKit

class navigationBar : UIView {
    
    let titleLabel : UILabel = {
        let tl = UILabel()
        tl.text = "Title"
        tl.textColor = AppColors.buttonBackgroundColor
        tl.font = UIFont(name: "Aeonik-Regular", size: 16)
        return tl
    }()
    
    let leftbtn : UIButton = {
        let lb = UIButton()
        lb.setImage(UIImage(named: "backbtn")? .withRenderingMode(.alwaysOriginal), for: .normal)
        lb.imageView?.contentMode = .scaleAspectFit
        lb.imageView?.clipsToBounds = true
        return lb
    }()
    
    let rightTitle : UILabel = {
        let rt = UILabel()
        rt.text = "Market"
        rt.textColor = AppColors.buttonBackgroundColor
        rt.font = UIFont(name: "Aeonik-Regular", size: 16)
        return rt
    }()
    
    let rightItem : UIImageView = {
        let ri = UIImageView()
        ri.image = UIImage(named: "dropdown")? .withRenderingMode(.alwaysTemplate)
        ri.tintColor = AppColors.goldenColor
        ri.contentMode = .scaleAspectFit
        ri.clipsToBounds = true
        return ri
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = AppColors.backgroundColor
        constrainHeight(constant: SafeAreaValues.top + 44)
        setupLayout()
    }
    
    func configure(title: String,
                   isTitleHidden : Bool = false,
                   leftbtn: UIImage? = UIImage(named: "backbtn"),
                   rightTitle: String = "Market",
                   isrightItemHidden : Bool = true ){
        self.titleLabel.text = title
        self.titleLabel.isHidden = isTitleHidden
        self.rightItem.isHidden = isrightItemHidden
        self.leftbtn.setImage(leftbtn, for: .normal)
        self.rightTitle.text = rightTitle
        self.rightTitle.isHidden = isrightItemHidden
        
    }
    
    func setupLayout(){
        let centerConstant = SafeAreaValues.top / 2
        addSubview(titleLabel)
        titleLabel.centerXInSuperview()
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: centerConstant).isActive = true
        
        addSubview(leftbtn)
        leftbtn.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 0, left: 16, bottom: 0, right: 0),size: .init(width: 0, height: 24))
        leftbtn.centerYAnchor.constraint(equalTo: centerYAnchor, constant: centerConstant).isActive = true
        
        let rightBarStackView = HorizontalStackView( arrangedSubviews: [rightTitle,rightItem], spacing: 6)
        addSubview(rightBarStackView)
        rightBarStackView.anchor(top: nil, leading: nil, bottom: nil, trailing: trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 16))
        rightBarStackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: centerConstant) .isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


