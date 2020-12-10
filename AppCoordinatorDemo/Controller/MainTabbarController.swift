//
//  MainTabbarController.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import UIKit

class MainTabbarController: UITabBarController {
let main = MainCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        main.start()
        viewControllers = [main.navigationController]
    }

}
