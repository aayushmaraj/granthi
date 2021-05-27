//
//  SignupViewContoller.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 26/4/21.
//



import UIKit
import MaterialComponents.MaterialTextControls_FilledTextFields

class SignupViewController: UIViewController {
    
   
    let scrollView: UIScrollView = {
        
        let sv = UIScrollView()
        sv.backgroundColor = AppColors.backgroundColor
        sv.contentSize.height = 1000
        return sv
    }()
    
    
    let contentView : UIView = {
        let cv = UIView()
        cv.backgroundColor = AppColors.backgroundColor
        return cv
    }()
    
    let topView: UIView = {
        let top = UIView()
        return top
    }()
    
    let bottomView: UIView = {
        let bottom = UIView()
        return bottom
    }()
    
    let logoImg : UIImageView = {
        let li = UIImageView()
        li.image = UIImage(named: "logo")
        return li
    }()
    
    let titlelbl : UILabel = {
        let tl = UILabel()
        
        tl.text = "Join Us!"
        tl.addCharacterSpacing(kernValue: 3)
        tl.font = UIFont(name: "Aeonik-Bold", size: 22)
        tl.textColor = AppColors.headingOne
        return tl
    }()
    
    let subtitlelbl : UILabel = {
        let st = UILabel()
        st.text = "Sign up to continue"
        st.font = UIFont(name: "Aeonik-Bold", size: 16)
        st.addCharacterSpacing(kernValue: 3)
        st.textColor = AppColors.greenTextColor
        return st
    }()
    
    let emailleadingIcon = UIImageView(image: UIImage(named: "email")?.withRenderingMode(.alwaysTemplate))
    
    lazy var emailField: MDCFilledTextField = {
        let field = MDCFilledTextField()
        field.placeholder = "Email"
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        field.textColor = AppColors.headingOne
        field.setUnderlineColor(AppColors.headingOne!, for: .normal)
        field.label.text = "Email"
        field.leadingViewMode = .unlessEditing
        emailleadingIcon.tintColor = AppColors.headingOne
        field.leadingView = emailleadingIcon
        return field
    }()
    
    let leadingIcon = UIImageView(image: UIImage(named: "username")?.withRenderingMode(.alwaysTemplate))
    
    lazy var usernameField: MDCFilledTextField = {
        let field = MDCFilledTextField()
        field.placeholder = "Username"
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        field.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        field.textColor = AppColors.headingOne
        field.setUnderlineColor(AppColors.headingOne!, for: .normal)
        field.label.text = "Username"
        field.leadingViewMode = .unlessEditing
        leadingIcon.tintColor = AppColors.headingOne
        field.leadingView = leadingIcon
        return field
    }()
    
    let pwleadingIcon = UIImageView(image: UIImage(named: "password")?.withRenderingMode(.alwaysTemplate))
    
    lazy var passwordField: MDCFilledTextField = {
        let pwfield = MDCFilledTextField()
        pwfield.placeholder = "Password"
        pwfield.setFilledBackgroundColor(AppColors.backgroundColor!, for: .normal)
        pwfield.setFilledBackgroundColor(AppColors.backgroundColor!, for: .editing)
        pwfield.textColor = AppColors.headingOne
        pwfield.setUnderlineColor(AppColors.headingOne!, for: .normal)
        pwfield.label.text = "Password"
        pwfield.leadingViewMode = .unlessEditing
        pwleadingIcon.tintColor = AppColors.headingOne
        pwfield.leadingView = pwleadingIcon
        return pwfield
    }()
    

    let Signupbtn : UIButton = {
        let sb = UIButton()
        sb.backgroundColor = AppColors.buttonBackgroundColor
        return sb
    }()
    
    let Signuptxt : UILabel = {
        let st = UILabel()
        st.text = "Signup"
        st.textColor = .white
        st.font = UIFont(name: "Aeonik-Bold", size: 16)
        return st
    } ()
    
    let HaveAccount : UILabel = {
        let HA = UILabel()
        HA.text = "Already have an account? Login"
        HA.font = UIFont(name: "Aeonik-Bold", size: 16)
//        HA.addCharacterSpacing(kernValue: 3)
        HA.textColor = AppColors.buttonBackgroundColor
        return HA
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        setupScrollView()
        
        Signupbtn.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        UIFont.familyNames.forEach({ familyName in
                  let fontNames = UIFont.fontNames(forFamilyName: familyName)
                  print(familyName, fontNames)
              })
        

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
            leadingIcon.tintColor = AppColors.statsDownColor

        }
        
        guard let username = usernameField.text else {
            return
        }
        
        
        if username.isEmpty {
            usernameField.leadingAssistiveLabel.text = "Text field is empty"
            usernameField.leadingAssistiveLabel.textColor = .red
            usernameField.setUnderlineColor(AppColors.statsDownColor!, for: .normal)
            usernameField.setNormalLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            usernameField.setFloatingLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            leadingIcon.tintColor = AppColors.statsDownColor

        }
        
        guard let password = passwordField.text else {
            return
        }

        if password.isEmpty {
            passwordField.leadingAssistiveLabel.text = "minimum length 8 character"
            passwordField.leadingAssistiveLabel.textColor = .red
            passwordField.setUnderlineColor(AppColors.statsDownColor!, for: .normal)
            passwordField.setNormalLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            passwordField.setFloatingLabelColor(AppColors.statsDownColor ?? .red, for: .normal)
            pwleadingIcon
                .tintColor = AppColors.statsDownColor

        }
        
        
        view.endEditing(true)
    }
    
    
    fileprivate func setupScrollView(){
        

        view.addSubview(scrollView)
        navigationController?.navigationBar.isHidden = true
        scrollView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: nil)
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor) .isActive = true
        
        scrollView.addSubview(topView)
        let height = (view.frame.height)/3
        topView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, size: .init(width: 0, height:height ))
        
        
        scrollView.addSubview(bottomView)
        let bottomheight = (view.frame.height) - height
        bottomView.anchor(top: topView.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, size: .init(width: 0, height: bottomheight ))
        
        
        topView.addSubview(contentView)
        contentView.centerInSuperview()
        contentView.addSubview(logoImg)
        logoImg.anchor(top: topView.topAnchor, leading: nil, bottom: nil, trailing: nil,padding: .init(top: 80, left: 0, bottom: 0, right: 0),size: .init(width: 94, height: 94))
        logoImg.centerXInSuperview()

        topView.addSubview(titlelbl)
        titlelbl.anchor(top: logoImg.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0))
        titlelbl.centerXInSuperview()

        topView.addSubview(subtitlelbl)
        subtitlelbl.anchor(top: titlelbl.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 8, left: 0, bottom: 0, right: 0))
        subtitlelbl.centerXInSuperview()
        
        bottomView.addSubview(emailField)
        let width = (view.frame.width) - 32
        emailField.anchor(top: bottomView.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 20, left: 16, bottom: 0, right: 0),size:.init(width: width, height: 50))

        bottomView.addSubview(usernameField)
        usernameField.anchor(top: emailField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 20, left: 16, bottom: 0, right: 0),size:.init(width: width, height: 50))

        bottomView.addSubview(passwordField)
        passwordField.anchor(top: usernameField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 40))

        bottomView.addSubview(Signupbtn)
        Signupbtn.anchor(top: passwordField.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 70, left: 16, bottom: 0, right: 0), size: .init(width: width, height: 60))

        Signupbtn.addSubview(Signuptxt)
        Signuptxt.centerInSuperview()
        
        bottomView.addSubview(HaveAccount)
        HaveAccount.anchor(top: Signupbtn.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 80, left: 0, bottom: 0, right: 0))
        HaveAccount.centerXInSuperview()

    }


}


