//
//  BuyCoordinator.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import Foundation
import UIKit

class BuyCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func makePayment(){
        let vc = PaymentViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
