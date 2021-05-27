//
//  UpdatePasswordViewController.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 5/5/21.
//

import UIKit
import MaterialComponents.MaterialTextControls_FilledTextFields

class UpdatePasswordViewController: UIViewController {
    let customNav = navigationBar()
    
    let contentView: UIScrollView = {
        let cv = UIScrollView()
        cv.backgroundColor = AppColors.backgroundColor
        return cv
    }()
    
    lazy var currentpasswordField :MDCFilledTextField = {
        let field = MDCFilledTextField()
        field.placeholder = "Enter current password"
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        field.textColor = AppColors.headingOne
        field.setUnderlineColor(AppColors.headingOne!, for: .normal)
        field.label.text = "Current Password"
        return field
    }()
    
    lazy var newpasswordField :MDCFilledTextField = {
        let field = MDCFilledTextField()
        field.placeholder = "Enter new password"
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        field.textColor = AppColors.headingOne
        field.setUnderlineColor(AppColors.headingOne!, for: .normal)
        field.label.text = "New Password"
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
        guard let currentpassword = currentpasswordField.text else {
            return
        }
        
        
        if currentpassword.isEmpty {
            currentpasswordField.leadingAssistiveLabel.text = "Text field is empty"
            currentpasswordField.leadingAssistiveLabel.textColor = .red
            currentpasswordField.setUnderlineColor(AppColors.statsDownColor!, for: .normal)
            currentpasswordField.setNormalLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            currentpasswordField.setFloatingLabelColor(AppColors.statsDownColor ?? .red, for: .normal)

        }
        
        guard let newpassword = newpasswordField.text else{
            return
        }
        if newpassword.isEmpty{
            newpasswordField.leadingAssistiveLabel.text = "Text field is empty"
            newpasswordField.leadingAssistiveLabel.textColor = .red
            newpasswordField.setUnderlineColor(AppColors.statsDownColor!, for: .normal)
            newpasswordField.setNormalLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            newpasswordField.setFloatingLabelColor(AppColors.statsDownColor ?? .red, for: .normal)

        }
    }
    
    fileprivate func setupNav(){
        customNav.configure(title: "Update Password", isTitleHidden: false, isrightItemHidden: true)
        customNav.dropShadow(cornerRadius: 0, shadowColor: AppColors.greenTextColor ?? .green, shadowOffset: .init(width: 1, height: 1) , shadowOpacity: 0.1, shadowRadius: 1)
        
    }
    
    fileprivate func SetupLayout(){
        
        view.addSubview(customNav)
        customNav.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        
    view.addSubview(contentView)
        contentView.anchor(top: customNav.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor,padding: .init(top: 5, left: 0, bottom: 0, right: 0))

        let width = (view.frame.width) - 32
        contentView.addSubview(currentpasswordField)
        currentpasswordField.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top:120, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 40))

        contentView.addSubview(newpasswordField)
        newpasswordField.anchor(top: currentpasswordField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top:40, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 40))

        contentView.addSubview(updateBtn)
        updateBtn.anchor(top: newpasswordField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 60, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 60))
        updateBtn.addSubview(updateTxt)
        updateTxt.centerInSuperview()

    }
    
}



