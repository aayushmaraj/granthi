//
//  CrypotCurrencyListVC.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 23/5/21.
//

import UIKit

class CryptoCurrencyListVC: UIViewController {
    let customNav = navigationBar()
    
    let contentView: UIView = {
       let cv = UIView()
        return cv
    }()
    
    let categoriesLbl : UILabel = {
        let cl = UILabel()
        cl.text = "Categories"
        cl.font = UIFont(name: "Aeonik-Bold", size: 16)
        cl.textColor = AppColors.headingThreeA
        cl.textAlignment = .center
        return cl
    }()
    
    let allCoinsLbl : UILabel = {
        let al = UILabel()
        al.text = "All Coins"
        al.font = UIFont(name: "Aeonik-Bold", size: 16)
        al.textColor = AppColors.headingThreeB
        al.textAlignment = .center
        return al
    }()
    
    let recentsLbl : UILabel = {
        let rl = UILabel()
        rl.text = "Recents"
        rl.font = UIFont(name: "Aeonik-Bold", size: 16)
        rl.textColor = AppColors.headingThreeB
        rl.textAlignment = .center
        return rl
    }()
    
    let portfolioLbl : UILabel = {
        let pl = UILabel()
        pl.text = "Portfolio"
        pl.font = UIFont(name: "Aeonik-Bold", size: 16)
        pl.textColor = AppColors.headingThreeB
        pl.textAlignment = .center
        return pl
    }()
    let indicatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        return view
    }()
    
    let indicatorView1: UIView = {
        let iv = UIView()
        iv.backgroundColor = AppColors.buttonBackgroundColor
        iv.layer.cornerRadius = 5
        iv.clipsToBounds = true
        return iv
    }()
    
    
    let collectionList : UITableView = {
        let cl = UITableView()
        cl.backgroundColor = .clear
        return cl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.backgroundColor
        self.hideNativeNavigation()
        setUpLayout()
        setUpNav()
        setUpList()
    }
    
    
    fileprivate func setUpList(){
        
        collectionList.delegate = self
        collectionList.dataSource = self
        collectionList.register(CollectionListCell.self, forCellReuseIdentifier: "AddCurrenciesCell")
        
    }
    
    func setUpNav(){
        customNav.configure(title: "string", isTitleHidden: true, leftbtn: UIImage(named: "search"), rightTitle: "$USD", isrightItemHidden: false)
        customNav.dropShadow(cornerRadius: 0, shadowColor: AppColors.greenTextColor ?? .green, shadowOffset: .init(width: 1, height: 1) , shadowOpacity: 0.1, shadowRadius: 1)
        
        
    }
    fileprivate func setUpLayout(){
        view.addSubview(customNav)
        customNav.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        
        view.addSubview(contentView)
        contentView.anchor(top: customNav.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        let buttonStackView = HorizontalStackView.init(arrangedSubviews: [categoriesLbl,allCoinsLbl,recentsLbl,portfolioLbl])
        buttonStackView.distribution = .fillEqually
        buttonStackView.alignment = .center
        
        view.addSubview(buttonStackView)
        buttonStackView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 16, left: 16, bottom: 0, right: 0))
        
        let indicatorWidth = (view.frame.width - 32) / 4
        contentView.addSubview(indicatorView)
        indicatorView.anchor(top: buttonStackView.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: indicatorWidth, height: 10))
        
        
        indicatorView.addSubview(indicatorView1)
        indicatorView1.centerXAnchor.constraint(equalTo: indicatorView.centerXAnchor).isActive = true
        indicatorView1.constrainWidth(constant: 10)
        indicatorView1.constrainHeight(constant: 10)
        
        contentView.addSubview(collectionList)
        collectionList.anchor(top: indicatorView.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor,padding: .init(top: 20, left: 16, bottom: 0, right: 16))

    }
}

extension CryptoCurrencyListVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AddCurrenciesCell", for: indexPath) as? CollectionListCell {
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("cell tapped")
    }
    
    
}
