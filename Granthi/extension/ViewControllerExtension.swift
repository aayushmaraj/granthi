//
//  ViewControllerExtension.swift
//  Granthi
//
//  Created by Aayushma Rajkarnikar on 7/5/21.
//

import UIKit
extension UIViewController{
    
    func hideNativeNavigation(){
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func hideTabBar( _ b: Bool){
        self.tabBarController?.tabBar.isHidden = b
    }
}
