//
//  MainViewController.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import UIKit

class MainViewController: UIViewController, ControllerInstance {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonBuyClicked(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func buttonCreateAccountClicked(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    @IBAction func buttonProfileClicked(_ sender: Any) {
        coordinator?.viewProfile()
    }
}
