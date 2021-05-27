//
//  AddCurrenciesViewController.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 9/5/21.
//

import UIKit
class AddCurrenciesViewController: UIViewController {
    let customNav = navigationBar()
    

    
    let currenciesList : UITableView = {
        let cl = UITableView(frame: .zero, style: .grouped)
        var frame = CGRect.zero
      frame.size.height = .leastNormalMagnitude
        cl.tableHeaderView = UIView(frame: frame)
     cl.tableFooterView = UIView(frame: frame)
      cl.showsVerticalScrollIndicator = false
        cl.backgroundColor = .clear
        cl.separatorStyle = .none
        return cl
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = AppColors.backgroundColor
        super.viewDidLoad()
        self.hideNativeNavigation()
        setUpList()
       setUpNav()
        setUpLayout()
    }
    
    fileprivate func setUpList(){
        currenciesList.delegate = self
        currenciesList.dataSource = self
        currenciesList.register(AddCurrenciesCell.self, forCellReuseIdentifier: "AddCurrenciesCell")
    }
    
    func setUpNav(){
        customNav.configure(title: "title", isTitleHidden: true, leftbtn: UIImage(named: "search"), rightTitle: "$USD", isrightItemHidden: false)
        customNav.dropShadow(cornerRadius: 0, shadowColor: AppColors.greenTextColor ?? .green, shadowOffset: .init(width: 1, height: 1) , shadowOpacity: 0.1, shadowRadius: 1)
    }
    

    func setUpLayout(){
        view.addSubview(customNav)
        customNav.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        
        view.addSubview(currenciesList)
        currenciesList.anchor(top: customNav.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor , padding: .init(top: 10, left: 16, bottom: 0, right: 16))
    }
    }

extension AddCurrenciesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let currenciesHeader = CurrenciesHeader()
        return currenciesHeader
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AddCurrenciesCell", for: indexPath) as? AddCurrenciesCell {
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


