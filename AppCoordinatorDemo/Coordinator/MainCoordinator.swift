//
//  MainCoordinator.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate{
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        navigationController.pushViewController(vc, animated: false)
    }

    func buySubscription(){
        let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func createAccount(to accountType: Int){
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        vc.accountType = accountType
        navigationController.pushViewController(vc, animated: false)
    }
    
    func viewProfile(){
        let child = ProfileCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    //Navigtaion Controller Delegate Method
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("Child Coordinators: \(childCoordinators)")
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController){
            return
        }
        
        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
        
        if let paymentController = fromViewController as? PaymentViewController {
            childDidFinish(paymentController.coordinator)
        }
    }
}
