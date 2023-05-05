//
//  LastMainTabBarC.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 4/5/23.
//

import Foundation
import UIKit

class LastMainTabBarC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .black
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.layer.borderWidth = 0.4
        tabBar.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100)
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let vc = LastClass()
        
        vc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Активная")?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        let vc1 = createVC(vc: UIViewController(), itemName: "", itemImage: "Отчёты")
        vc1.view.backgroundColor = .white
        
        let vc2 = createVC(vc: UIViewController(), itemName: "Profile", itemImage: "Union-2")
        vc2.view.backgroundColor = .white
        
        viewControllers = [vc, vc1, vc2]
    }
    
    func createVC(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(named: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
        
        let vc1 = UINavigationController(rootViewController: vc)
        vc1.tabBarItem = item
        
        return vc1
    }
}
