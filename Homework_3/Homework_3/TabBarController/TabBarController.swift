//
//  TabBarController.swift
//  Homework_3
//
//  Created by Максим Солнцев on 11/3/20.
//

import UIKit

class TabBarController: UITabBarController {
    @IBOutlet weak var tab: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tab.items![0].image = UIImage(named: "test")
    }
}
