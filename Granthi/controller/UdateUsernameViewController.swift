//
//  UdateUsernameViewController.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 5/5/21.
//


import UIKit
import MaterialComponents.MaterialTextControls_FilledTextFields

class UpdateUsernameViewController: UIViewController {
    let customNav = navigationBar()
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = AppColors.backgroundColor
        sv.contentSize.height = 1000
        return sv
    }()
    
    let contentView: UIScrollView = {
        let cv = UIScrollView()
        cv.backgroundColor = AppColors.backgroundColor
        return cv
    }()
    
    lazy var usernameField :MDCFilledTextField = {
        let field = MDCFilledTextField()
        field.placeholder = "Enter Username"
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        field.textColor = AppColors.headingOne
        field.setUnderlineColor(AppColors.headingOne!, for: .normal)
        field.label.text = "What should we call you?"
        return field
    }()
     
    let updateBtn: UIButton = {
        let ub = UIButton()
        ub.backgroundColor = AppColors.buttonBackgroundColor
        return ub
    }()
    
    let updateTxt : UILabel = {
        let ut = UILabel()
        ut.text = "Update"
        ut.font = UIFont(name: "Aeonik-Bold", size: 16)
        ut.textColor = .white
        return ut
    }()
    override func viewDidLoad() {
        self.hideNativeNavigation()
        setupNav()
        SetupLayout()
    }
    @objc fileprivate func handleLogin(){
        guard let update = usernameField.text else {
            return
        }
        
        
        if update.isEmpty {
            usernameField.leadingAssistiveLabel.text = "Text field is empty"
            usernameField.leadingAssistiveLabel.textColor = .red
            usernameField.setUnderlineColor(AppColors.statsDownColor!, for: .normal)
            usernameField.setNormalLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            usernameField.setFloatingLabelColor(AppColors.statsDownColor ?? .red, for: .normal)

        }
    }
    fileprivate func setupNav(){
        customNav.configure(title: "Update Username", isTitleHidden: false, isrightItemHidden: true)
        customNav.dropShadow(cornerRadius: 0, shadowColor: AppColors.greenTextColor ?? .green, shadowOffset: .init(width: 1, height: 1) , shadowOpacity: 0.1, shadowRadius: 1)

    }
    
    
    fileprivate func SetupLayout(){
        
        view.addSubview(customNav)
        customNav.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        
        view.addSubview(contentView)
        contentView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 5, left: 0, bottom: 0, right: 0))

        let width = (view.frame.width) - 32
        contentView.addSubview(usernameField)
        usernameField.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top:120, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 40))

        contentView.addSubview(updateBtn)
        updateBtn.anchor(top: usernameField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 60, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 60))
        updateBtn.addSubview(updateTxt)
        updateTxt.centerInSuperview()
        
    }
    
}



