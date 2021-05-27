//
//  UpdateEmailViewController.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 30/4/21.
//

import UIKit
import MaterialComponents.MaterialTextControls_FilledTextFields

class UpdateEmailViewController: UIViewController {
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
    
    lazy var emailField :MDCFilledTextField = {
        let field = MDCFilledTextField()
        field.placeholder = "Enter Your Email"
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        field.textColor = AppColors.headingOne
        field.setUnderlineColor(AppColors.headingOne!, for: .normal)
        field.label.text = "Enter Your Email"
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
        guard let email = emailField.text else {
            return
        }
        
        
        if email.isEmpty {
            emailField.leadingAssistiveLabel.text = "Text field is empty"
            emailField.leadingAssistiveLabel.textColor = .red
            emailField.setUnderlineColor(AppColors.statsDownColor!, for: .normal)
            emailField.setNormalLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            emailField.setFloatingLabelColor(AppColors.statsDownColor ?? .red, for: .normal)

        }
    }
    
    fileprivate func setupNav(){
        customNav.configure(title: "Update Email", isTitleHidden: false, isrightItemHidden: true)
        customNav.dropShadow(cornerRadius: 0, shadowColor: AppColors.greenTextColor ?? .green, shadowOffset: .init(width: 1, height: 1) , shadowOpacity: 0.1, shadowRadius: 1)
    }
    
    fileprivate func SetupLayout(){
        
        view.addSubview(customNav)
        customNav.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 5, left: 0, bottom: 0, right: 0))
        
        view.addSubview(scrollView)
        scrollView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        view.addSubview(contentView)
        contentView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)

        let width = (view.frame.width) - 32
        contentView.addSubview(emailField)
        emailField.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top:120, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 40))

        contentView.addSubview(updateBtn)
        updateBtn.anchor(top: emailField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 60))
        updateBtn.addSubview(updateTxt)
        updateTxt.centerInSuperview()
        
    }
    
}


